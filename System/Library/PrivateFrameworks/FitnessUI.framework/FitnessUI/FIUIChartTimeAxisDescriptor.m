@interface FIUIChartTimeAxisDescriptor
+ (unint64_t)_spacingIntervalFromAxisSpacing:(id)a3;
- (BOOL)_validateProperties;
- (FIUIChartTimeAxisDescriptor)init;
- (id)_hourMinuteFormatterWithTextStyle:(unint64_t)a3;
- (id)_labelAtIndex:(unint64_t)a3;
- (id)_labelsForSpacingInterval:(unint64_t)a3 withSpacing:(id)a4 textStyle:(unint64_t)a5;
- (id)_newSubLabelFromDate:(id)a3 withTimeInterval:(unint64_t)a4 textStyle:(unint64_t)a5;
- (id)_startDateFromTimeInterval:(unint64_t)a3;
- (id)_stringFromDate:(id)a3 withTimeInterval:(unint64_t)a4 textStyle:(unint64_t)a5 forceAMPM:(BOOL)a6;
- (id)_subLabelAtIndex:(unint64_t)a3;
- (id)_subLabelsForSpacingInterval:(unint64_t)a3 withSpacing:(id)a4 textStyle:(unint64_t)a5;
- (id)axisLabels;
- (id)axisSubLabels;
- (id)dayFormatter:(unint64_t)a3;
- (id)hourFormatter:(unint64_t)a3;
- (id)monthFormatter:(unint64_t)a3;
- (id)positionForLabelAtIndex:(unint64_t)a3;
- (id)positionForSubLabelAtIndex:(unint64_t)a3;
- (id)textForLabelAtIndex:(unint64_t)a3;
- (id)textForSubLabelAtIndex:(unint64_t)a3;
- (id)weekdayFormatter:(unint64_t)a3;
- (id)yearFormatter:(unint64_t)a3;
- (int64_t)_hourComponentFromDate:(id)a3;
- (unint64_t)numLabels;
- (unint64_t)numSubLabels;
- (void)_clearCache;
- (void)_clearFormatters;
- (void)_generateAxisLabels;
- (void)_generateAxisSubLabels;
- (void)invalidateCaches;
- (void)selectLabel:(BOOL)a3 atIndex:(unint64_t)a4;
- (void)setAxisSpacing:(id)a3;
- (void)setMaxValue:(id)a3;
- (void)setMinValue:(id)a3;
- (void)setSubAxisSpacing:(id)a3;
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

    v6 = [MEMORY[0x1E695DF70] array];
    cachedAxisLabelColors = v3->_cachedAxisLabelColors;
    v3->_cachedAxisLabelColors = v6;

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

- (void)setAxisSpacing:(id)a3
{
  objc_storeStrong(&self->_axisSpacing, a3);
  v6 = a3;
  cachedAxisLabels = self->_cachedAxisLabels;
  self->_cachedAxisLabels = 0;

  [(NSMutableArray *)self->_cachedAxisLabelColors removeAllObjects];
}

- (void)setSubAxisSpacing:(id)a3
{
  objc_storeStrong(&self->_subAxisSpacing, a3);
  v6 = a3;
  cachedAxisSubLabels = self->_cachedAxisSubLabels;
  self->_cachedAxisSubLabels = 0;
}

- (id)_hourMinuteFormatterWithTextStyle:(unint64_t)a3
{
  hourMinuteFormatters = self->_hourMinuteFormatters;
  if (!hourMinuteFormatters)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_hourMinuteFormatters;
    self->_hourMinuteFormatters = v6;

    hourMinuteFormatters = self->_hourMinuteFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)hourMinuteFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v9 setDateStyle:0];
    if (a3 <= 2)
    {
      if (a3 >= 2)
      {
        if (a3 == 2)
        {
          [v9 setTimeStyle:1];
          if ((_FIUICPTimeFormatIs24HourMode() & 1) == 0)
          {
            v15 = [MEMORY[0x1E695DF58] currentLocale];
            v19[0] = 0;
            v19[1] = 0;
            v18[0] = 0;
            v18[1] = 0;
            v16 = GetFormatAndHourFieldRangesFor_ha(v15, v19, v18);
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

    else if (a3 - 3 >= 2)
    {
      if (a3 == 5)
      {
        v10 = v9;
        v11 = 2;
      }

      else
      {
        if (a3 != 6)
        {
LABEL_12:
          v12 = self->_hourMinuteFormatters;
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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

- (id)hourFormatter:(unint64_t)a3
{
  hourFormatters = self->_hourFormatters;
  if (!hourFormatters)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_hourFormatters;
    self->_hourFormatters = v6;

    hourFormatters = self->_hourFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)hourFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:v10];

    v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v12 = [v9 locale];
    [v11 setLocale:v12];

    [v11 setTimeStyle:1];
    v13 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    v14 = [v13 mutableCopy];

    v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [v14 formUnionWithCharacterSet:v15];

    v16 = [MEMORY[0x1E695DF00] date];
    v17 = [v11 stringFromDate:v16];
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
    if (v20 && a3 <= 7)
    {
      v21 = off_1E878C9D8[a3];
    }

    if (a3 != 1)
    {
      if (a3)
      {
        if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v22 = [MEMORY[0x1E695DF58] currentLocale];
          v32[0] = 0;
          v32[1] = 0;
          v31[0] = 0;
          v31[1] = 0;
          v23 = GetFormatAndHourFieldRangesFor_ha(v22, v32, v31);
          v24 = @"ah";
          if (a3 == 3)
          {
            v24 = @"a h";
          }

          v25 = @"h a";
          if (a3 != 3)
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
          if (a3 == 6)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@mm a", v21, v19];
          }

          else
          {
            if (a3 != 5 && a3 != 4)
            {
              goto LABEL_30;
            }

            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@mm", v21, v19];
          }
          v22 = ;
          v27 = v9;
          v26 = v22;
        }

        [v27 setDateFormat:v26];

LABEL_30:
        v28 = self->_hourFormatters;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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

- (id)dayFormatter:(unint64_t)a3
{
  dayFormatters = self->_dayFormatters;
  if (!dayFormatters)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_dayFormatters;
    self->_dayFormatters = v6;

    dayFormatters = self->_dayFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)dayFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:v10];

    if (a3 <= 6 && ((1 << a3) & 0x73) != 0)
    {
      [v9 setDateFormat:@"d"];
    }

    v11 = self->_dayFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (id)weekdayFormatter:(unint64_t)a3
{
  weekdayFormatters = self->_weekdayFormatters;
  if (!weekdayFormatters)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_weekdayFormatters;
    self->_weekdayFormatters = v6;

    weekdayFormatters = self->_weekdayFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)weekdayFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:v10];

    if (a3 <= 6 && ((0x73u >> a3) & 1) != 0)
    {
      [v9 setDateFormat:off_1E878CA18[a3]];
    }

    v11 = self->_weekdayFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (id)monthFormatter:(unint64_t)a3
{
  monthFormatters = self->_monthFormatters;
  if (!monthFormatters)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_monthFormatters;
    self->_monthFormatters = v6;

    monthFormatters = self->_monthFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)monthFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:v10];

    if (a3 <= 6 && ((0x73u >> a3) & 1) != 0)
    {
      [v9 setDateFormat:off_1E878CA50[a3]];
    }

    v11 = self->_monthFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (id)yearFormatter:(unint64_t)a3
{
  yearFormatters = self->_yearFormatters;
  if (!yearFormatters)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_yearFormatters;
    self->_yearFormatters = v6;

    yearFormatters = self->_yearFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)yearFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:v10];

    if (a3 <= 6 && ((1 << a3) & 0x73) != 0)
    {
      [v9 setDateFormat:@"YYYY"];
    }

    v11 = self->_yearFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (void)setMinValue:(id)a3
{
  v4 = a3;
  if ([self->_minValue compare:v4])
  {
    [(FIUIChartTimeAxisDescriptor *)self _clearCache];
  }

  minValue = self->_minValue;
  self->_minValue = v4;
}

- (void)setMaxValue:(id)a3
{
  v4 = a3;
  if ([self->_maxValue compare:v4])
  {
    [(FIUIChartTimeAxisDescriptor *)self _clearCache];
  }

  maxValue = self->_maxValue;
  self->_maxValue = v4;
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
  v3 = [(FIUIChartTimeAxisDescriptor *)self minValue];
  v4 = [(FIUIChartTimeAxisDescriptor *)self maxValue];
  v5 = [v3 compare:v4];

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

- (id)_labelsForSpacingInterval:(unint64_t)a3 withSpacing:(id)a4 textStyle:(unint64_t)a5
{
  v27 = a4;
  v25 = a3;
  v7 = [(FIUIChartTimeAxisDescriptor *)self _startDateFromTimeInterval:a3];
  v8 = [(FIUIChartTimeAxisDescriptor *)self maxValue];
  v9 = v8;
  v28 = 0;
  if (v7 && v8)
  {
    v28 = [MEMORY[0x1E695DF70] array];
    v29 = [MEMORY[0x1E695DF00] date];
    v24 = v7;
    v10 = v7;
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    forceAMPMOnFirstLabel = self->_forceAMPMOnFirstLabel;
    v13 = [v11 component:32 fromDate:v10];
    if (([v10 hk_isAfterDate:v9] & 1) == 0)
    {
      v14 = v13 < 12;
      do
      {
        v15 = v10;
        v10 = [v11 dateByAddingComponents:v27 toDate:v10 options:{0, v24}];
        v16 = [v11 component:32 fromDate:v10] < 12;
        v17 = objc_alloc_init(FIUIChartAxisLabel);
        v18 = forceAMPMOnFirstLabel || self->_useMinMaxLabelPlacement;
        v19 = [(FIUIChartTimeAxisDescriptor *)self _stringFromDate:v15 withTimeInterval:v25 textStyle:a5 forceAMPM:v18];
        [(FIUIChartAxisLabel *)v17 setText:v19];
        [(FIUIChartAxisLabel *)v17 setLocation:v15];
        [(FIUIChartAxisLabel *)v17 setLabelColor:self->_unhighlightedLabelColor];
        if (self->_useMinMaxLabelPlacement && [v10 hk_isAfterDate:v9])
        {
          [(FIUIChartAxisLabel *)v17 setUseReversePlacement:1];
        }

        v20 = [v10 hk_isAfterDate:v29];
        p_unhighlightedLabelColor = &self->_unhighlightedLabelColor;
        if (v20)
        {
          v22 = [v15 hk_isBeforeDate:v29];
          p_unhighlightedLabelColor = &self->_unhighlightedLabelColor;
          if (v22)
          {
            [(FIUIChartAxisLabel *)v17 setLabelColor:self->_highlightedLabelColor];
            p_unhighlightedLabelColor = &self->_highlightedLabelColor;
          }
        }

        [(NSMutableArray *)self->_cachedAxisLabelColors addObject:*p_unhighlightedLabelColor];
        [v28 addObject:v17];
        forceAMPMOnFirstLabel = v14 != v16 && self->_forceAMPMOnFirstLabel;

        v14 = v16;
      }

      while (![v10 hk_isAfterDate:v9]);
    }

    v7 = v24;
  }

  return v28;
}

- (int64_t)_hourComponentFromDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:32 fromDate:v4];

  v7 = [v6 hour];
  return v7;
}

- (id)_newSubLabelFromDate:(id)a3 withTimeInterval:(unint64_t)a4 textStyle:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_alloc_init(FIUIChartAxisLabel);
  v10 = [(FIUIChartTimeAxisDescriptor *)self _stringFromDate:v8 withTimeInterval:a4 textStyle:a5 forceAMPM:0];
  v11 = v10;
  if (self->_subAxisCapitalize)
  {
    v12 = [v10 localizedUppercaseString];

    v11 = v12;
  }

  [(FIUIChartAxisLabel *)v9 setText:v11];
  [(FIUIChartAxisLabel *)v9 setLocation:v8];
  [(FIUIChartAxisLabel *)v9 setLabelColor:self->_unhighlightedSubLabelColor];

  return v9;
}

- (id)_subLabelsForSpacingInterval:(unint64_t)a3 withSpacing:(id)a4 textStyle:(unint64_t)a5
{
  v7 = a4;
  v8 = [(FIUIChartTimeAxisDescriptor *)self _startDateFromTimeInterval:a3];
  v9 = [(FIUIChartTimeAxisDescriptor *)self maxValue];
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [MEMORY[0x1E695DF00] date];
    v19 = v8;
    v13 = v8;
    v14 = [MEMORY[0x1E695DEE8] currentCalendar];
    if (([v13 hk_isAfterDate:v10] & 1) == 0)
    {
      while (1)
      {
        v15 = v13;
        v13 = [v14 dateByAddingComponents:v7 toDate:v13 options:{0, v19}];
        if (!self->_generateSubAxisDescriptorOnlyForNoonMidnight)
        {
          break;
        }

        v16 = [(FIUIChartTimeAxisDescriptor *)self _hourComponentFromDate:v15];
        if (v16 > 0x18 || ((1 << v16) & 0x1001001) == 0 || (_FIUICPTimeFormatIs24HourMode() & 1) != 0)
        {
          goto LABEL_15;
        }

        v17 = [(FIUIChartTimeAxisDescriptor *)self _newSubLabelFromDate:v15 withTimeInterval:a3 textStyle:a5];
        if ([v13 hk_isAfterDate:v12] && (objc_msgSend(v15, "hk_isBeforeDate:", v12) & 1) != 0)
        {
          goto LABEL_13;
        }

LABEL_14:
        [v11 addObject:v17];

LABEL_15:
        if ([v13 hk_isAfterDate:v10])
        {
          goto LABEL_16;
        }
      }

      v17 = [(FIUIChartTimeAxisDescriptor *)self _newSubLabelFromDate:v15 withTimeInterval:a3 textStyle:a5];
      if (![v13 hk_isAfterDate:v12] || !objc_msgSend(v15, "hk_isBeforeDate:", v12))
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

  return v11;
}

- (id)_startDateFromTimeInterval:(unint64_t)a3
{
  v4 = [(FIUIChartTimeAxisDescriptor *)self minValue];

  if (v4)
  {
    anchorRule = self->_anchorRule;
    v6 = [(FIUIChartTimeAxisDescriptor *)self minValue];
    v7 = [(FIUIChartDateAnchorRule *)anchorRule generateAnchorFromDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stringFromDate:(id)a3 withTimeInterval:(unint64_t)a4 textStyle:(unint64_t)a5 forceAMPM:(BOOL)a6
{
  v9 = a3;
  v10 = 0;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3uLL:
        v11 = [(FIUIChartTimeAxisDescriptor *)self dayFormatter:a5];
        break;
      case 4uLL:
        v11 = [(FIUIChartTimeAxisDescriptor *)self monthFormatter:a5];
        break;
      case 5uLL:
        v11 = [(FIUIChartTimeAxisDescriptor *)self yearFormatter:a5];
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (!a4)
  {
    v11 = [(FIUIChartTimeAxisDescriptor *)self _hourMinuteFormatterWithTextStyle:a5];
LABEL_22:
    v14 = v11;
    v15 = [v11 stringFromDate:v9];
    goto LABEL_23;
  }

  if (a4 != 1)
  {
    if (a4 != 2)
    {
      goto LABEL_24;
    }

    v11 = [(FIUIChartTimeAxisDescriptor *)self weekdayFormatter:a5];
    goto LABEL_22;
  }

  if (a5 != 7)
  {
    [(FIUIChartTimeAxisDescriptor *)self _hourComponentFromDate:v9];
    if (a5 & 0xFFFFFFFFFFFFFFFELL) == 2 && (_FIUICPTimeFormatIs24HourMode())
    {
      v16 = self;
      v17 = 1;
    }

    else
    {
      v16 = self;
      v17 = a5;
    }

    goto LABEL_21;
  }

  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [v12 component:32 fromDate:v9];

  if (v13 != 12)
  {
    v16 = self;
    v17 = 4;
LABEL_21:
    v11 = [(FIUIChartTimeAxisDescriptor *)v16 hourFormatter:v17];
    goto LABEL_22;
  }

  v14 = FIUIBundle();
  v15 = [v14 localizedStringForKey:@"NOON" value:&stru_1F5F88F90 table:@"Localizable"];
LABEL_23:
  v10 = v15;

LABEL_24:

  return v10;
}

+ (unint64_t)_spacingIntervalFromAxisSpacing:(id)a3
{
  v3 = a3;
  v4 = [v3 day];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 weekOfYear];
  v7 = [v3 month];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v3 year];

  if ((v9 - 1) <= 0x7FFFFFFFFFFFFFFDLL && !v8)
  {
    return 5;
  }

  v11 = (v6 - 1) >= 0x7FFFFFFFFFFFFFFELL && v5 <= 0;
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

- (id)_labelAtIndex:(unint64_t)a3
{
  v4 = [(FIUIChartTimeAxisDescriptor *)self axisLabels];
  v5 = [v4 objectAtIndex:a3];

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
  v2 = [(FIUIChartTimeAxisDescriptor *)self axisLabels];
  v3 = [v2 count];

  return v3;
}

- (id)positionForLabelAtIndex:(unint64_t)a3
{
  v3 = [(FIUIChartTimeAxisDescriptor *)self _labelAtIndex:a3];
  v4 = [v3 location];

  return v4;
}

- (id)textForLabelAtIndex:(unint64_t)a3
{
  v3 = [(FIUIChartTimeAxisDescriptor *)self _labelAtIndex:a3];
  v4 = [v3 text];

  return v4;
}

- (void)selectLabel:(BOOL)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  if ([(FIUIChartTimeAxisDescriptor *)self numLabels]<= a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(FIUIChartTimeAxisDescriptor *)self _labelAtIndex:a4];
  }

  v10 = v7;
  if (v5)
  {
    [v7 setLabelColor:self->_selectedLabelColor];
  }

  else
  {
    if ([(NSMutableArray *)self->_cachedAxisLabelColors count]<= a4)
    {
      v8 = self->_unhighlightedLabelColor;
    }

    else
    {
      v8 = [(NSMutableArray *)self->_cachedAxisLabelColors objectAtIndexedSubscript:a4];
    }

    v9 = v8;
    [v10 setLabelColor:v8];
  }
}

- (id)_subLabelAtIndex:(unint64_t)a3
{
  if (self->_subAxisSpacing)
  {
    v4 = [(FIUIChartTimeAxisDescriptor *)self axisSubLabels];
    v5 = [v4 objectAtIndex:a3];
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

  v2 = [(FIUIChartTimeAxisDescriptor *)self axisSubLabels];
  v3 = [v2 count];

  return v3;
}

- (id)positionForSubLabelAtIndex:(unint64_t)a3
{
  if (self->_subAxisSpacing)
  {
    v3 = [(FIUIChartTimeAxisDescriptor *)self _subLabelAtIndex:a3];
    v4 = [v3 location];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)textForSubLabelAtIndex:(unint64_t)a3
{
  if (self->_subAxisSpacing)
  {
    v3 = [(FIUIChartTimeAxisDescriptor *)self _subLabelAtIndex:a3];
    v4 = [v3 text];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end