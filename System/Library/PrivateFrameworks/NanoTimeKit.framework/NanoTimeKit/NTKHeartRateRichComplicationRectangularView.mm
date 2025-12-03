@interface NTKHeartRateRichComplicationRectangularView
- (NTKHeartRateRichComplicationRectangularView)init;
- (double)_xValueForPointFromChartPoint:(id)point inRect:(CGRect)rect;
- (double)_yValueForPointFromChartPointValue:(id)value betweenHigh:(id)high andLow:(id)low inRect:(CGRect)rect;
- (void)_loadLockedState;
- (void)_loadNoDataState;
- (void)_loadWithMetadata:(id)metadata;
- (void)_updateDailyLabel:(id)label withBPM:(id)m;
- (void)drawGraph:(CGContext *)graph rect:(CGRect)rect;
- (void)loadWithMetadata:(id)metadata;
@end

@implementation NTKHeartRateRichComplicationRectangularView

- (NTKHeartRateRichComplicationRectangularView)init
{
  v5.receiver = self;
  v5.super_class = NTKHeartRateRichComplicationRectangularView;
  v2 = [(NTKRichComplicationRectangularDailyGraphView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_cornerRadius = 1.0;
    [(NTKHeartRateRichComplicationRectangularView *)v2 setOpaque:0];
  }

  return v3;
}

- (void)drawGraph:(CGContext *)graph rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  chartPoints = [(NTKHeartRateRichComplicationRectangularView *)self chartPoints];
  v11 = [chartPoints count];

  if (v11)
  {
    [(NTKHeartRateRichComplicationRectangularView *)self cornerRadius];
    v13 = y + v12;
    [(NTKHeartRateRichComplicationRectangularView *)self cornerRadius];
    v15 = height + v14 * -2.0;
    highBPM = [(NTKHeartRateRichComplicationRectangularView *)self highBPM];
    [highBPM doubleValue];
    v18 = v17;
    lowBPM = [(NTKHeartRateRichComplicationRectangularView *)self lowBPM];
    [lowBPM doubleValue];
    v21 = v20;

    v28.origin.x = x;
    v28.origin.y = v13;
    v28.size.width = width;
    v28.size.height = v15;
    v22 = CGRectGetHeight(v28);
    v23 = 0.0;
    if (v22 > 2.22044605e-16)
    {
      [(NTKHeartRateRichComplicationRectangularView *)self cornerRadius];
      v23 = (v18 - v21) * (v24 * 3.0 / v22);
    }

    chartPoints2 = [(NTKHeartRateRichComplicationRectangularView *)self chartPoints];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__NTKHeartRateRichComplicationRectangularView_drawGraph_rect___block_invoke;
    v27[3] = &unk_278782650;
    v27[4] = self;
    *&v27[5] = x;
    *&v27[6] = v13;
    *&v27[7] = width;
    *&v27[8] = v15;
    *&v27[9] = v23;
    v27[10] = graph;
    [chartPoints2 enumerateObjectsUsingBlock:v27];

    accentColor = [(NTKRichComplicationRectangularDailyGraphView *)self accentColor];
    CGContextSetFillColorWithColor(graph, [accentColor CGColor]);

    CGContextDrawPath(graph, kCGPathFill);
  }
}

void __62__NTKHeartRateRichComplicationRectangularView_drawGraph_rect___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _xValueForPointFromChartPoint:v3 inRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v5 = v4;
  if (v4 >= CGRectGetMinX(*(a1 + 40)) && v5 <= CGRectGetMaxX(*(a1 + 40)))
  {
    v39 = v3;
    v6 = [v3 yValue];
    v7 = [MEMORY[0x277CBEB18] array];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __62__NTKHeartRateRichComplicationRectangularView_drawGraph_rect___block_invoke_2;
    v45[3] = &unk_278782628;
    v8 = v7;
    v46 = v8;
    v47 = *(a1 + 72);
    [v6 enumerateRangesUsingBlock:v45];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      v12 = v5 + -0.5;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v41 + 1) + 8 * i) rangeValue];
          v15 = *(a1 + 32);
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16 + v14 - 1];
          v18 = [*(a1 + 32) highBPM];
          v19 = [*(a1 + 32) lowBPM];
          [v15 _yValueForPointFromChartPointValue:v17 betweenHigh:v18 andLow:v19 inRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
          v21 = v20;

          v22 = *(a1 + 32);
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
          v24 = [*(a1 + 32) highBPM];
          v25 = [*(a1 + 32) lowBPM];
          [v22 _yValueForPointFromChartPointValue:v23 betweenHigh:v24 andLow:v25 inRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
          v27 = v26 - v21;

          [*(a1 + 32) cornerRadius];
          v29 = v21 - v28;
          [*(a1 + 32) cornerRadius];
          v31 = v30 + v30;
          [*(a1 + 32) cornerRadius];
          v33 = v27 + v32 * 2.0;
          [*(a1 + 32) cornerRadius];
          v35 = v34;
          [*(a1 + 32) cornerRadius];
          v37 = v36;
          v50.origin.x = v12;
          v50.origin.y = v29;
          v50.size.width = v31;
          v50.size.height = v33;
          v38 = CGPathCreateWithRoundedRect(v50, v35, v37, 0);
          CGContextAddPath(*(a1 + 80), v38);
          CGPathRelease(v38);
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v10);
    }

    v3 = v39;
  }
}

void __62__NTKHeartRateRichComplicationRectangularView_drawGraph_rect___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) lastObject];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [*(a1 + 32) lastObject];
    v9 = [v8 rangeValue];
    v11 = v10;

    if (*(a1 + 40) > (a2 - (v11 + v9) + 1))
    {
      v12 = a2 + a3 - v9;
      v13 = *(a1 + 32);
      v14 = [v13 count] - 1;
      v18 = [MEMORY[0x277CCAE60] valueWithRange:{v9, v12}];
      [v13 replaceObjectAtIndex:v14 withObject:?];
      goto LABEL_7;
    }

    v17 = *(a1 + 32);
    v15 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
    v16 = v17;
  }

  else
  {
    v15 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
    v16 = v7;
  }

  v18 = v15;
  [v16 addObject:?];
LABEL_7:
}

- (void)loadWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([metadataCopy count])
  {
    v4 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyIsLocked"];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      [(NTKHeartRateRichComplicationRectangularView *)self _loadLockedState];
    }

    else
    {
      [(NTKHeartRateRichComplicationRectangularView *)self _loadWithMetadata:metadataCopy];
    }
  }

  else
  {
    [(NTKHeartRateRichComplicationRectangularView *)self _loadNoDataState];
  }

  [(NTKHeartRateRichComplicationRectangularView *)self setNeedsDisplay];
}

- (void)_loadLockedState
{
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateRichComplicationRectangularView: Load locked state.", v8, 2u);
  }

  v4 = NTKClockFaceLocalizedString(@"HEART_RATE_SIGNATURE_LARGE_LOCKED", @"Unlock to View");
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocale = [mainBundle preferredLocale];
  v7 = [v4 uppercaseStringWithLocale:preferredLocale];
  [(NTKRichComplicationRectangularDailyGraphView *)self resetToNoDataState:v7];

  [(NTKHeartRateRichComplicationRectangularView *)self setHighBPM:&unk_284182F68];
  [(NTKHeartRateRichComplicationRectangularView *)self setLowBPM:&unk_284182F68];
  [(NTKHeartRateRichComplicationRectangularView *)self setChartPoints:0];
}

- (void)_loadNoDataState
{
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKHeartRateRichComplicationRectangularView: Load no data state.", v8, 2u);
  }

  v4 = NTKClockFaceLocalizedString(@"HEART_RATE_SIGNATURE_LARGE_NO_DATA", @"No Heart Rate Data");
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocale = [mainBundle preferredLocale];
  v7 = [v4 uppercaseStringWithLocale:preferredLocale];
  [(NTKRichComplicationRectangularDailyGraphView *)self resetToNoDataState:v7];

  [(NTKHeartRateRichComplicationRectangularView *)self setHighBPM:&unk_284182F68];
  [(NTKHeartRateRichComplicationRectangularView *)self setLowBPM:&unk_284182F68];
  [(NTKHeartRateRichComplicationRectangularView *)self setChartPoints:0];
}

- (void)_loadWithMetadata:(id)metadata
{
  v67 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyDate"];
  if (v5)
  {
    [(NTKHeartRateRichComplicationRectangularView *)self setMeasurementDate:v5];
  }

  else
  {
    complicationDate = [MEMORY[0x277CBBAD8] complicationDate];
    [(NTKHeartRateRichComplicationRectangularView *)self setMeasurementDate:complicationDate];
  }

  v7 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyBPM"];
  if (v7)
  {
    v8 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v7 numberStyle:0];
    v9 = MEMORY[0x277CCACA8];
    v10 = NTKClockFaceLocalizedString(@"HEART_RATE_READING", 0);
    v11 = [v9 stringWithFormat:v10, v8];

    v12 = [MEMORY[0x277CBBB88] textProviderWithText:v11];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v12 setTintColor:whiteColor];

    v14 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v64 = v7;
      v65 = 2112;
      v66 = v12;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "NTKHeartRateRichComplicationRectangularView: loadWithMetadata with bpm:%{public}@ bpmTextProvider:%@", buf, 0x16u);
    }

    v15 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyIsNow"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      v62 = v11;
      v17 = v8;
      v18 = MEMORY[0x277CBBB88];
      v19 = NTKClockFaceLocalizedString(@"HEART_RATE_TIME_NOW", @"Now");
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      preferredLocale = [mainBundle preferredLocale];
      v22 = [v19 uppercaseStringWithLocale:preferredLocale];
      v23 = [v18 textProviderWithText:v22];

      v24 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = v23;
        _os_log_impl(&dword_22D9C5000, v24, OS_LOG_TYPE_DEFAULT, "NTKHeartRateRichComplicationRectangularView: isNowReading with dateTextProvider:%@", buf, 0xCu);
      }

      v8 = v17;
      v11 = v62;
    }

    else
    {
      v30 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyFutureEntry"];
      bOOLValue2 = [v30 BOOLValue];

      if (bOOLValue2)
      {
        v32 = 48;
      }

      else
      {
        v32 = 112;
      }

      v33 = NTKCanUseShortRelativeDateStyleForHeartRateComplicationStrings();
      v34 = MEMORY[0x277CBB6A8];
      if (!v33)
      {
        v34 = MEMORY[0x277CBB6A0];
      }

      v35 = *v34;
      v36 = MEMORY[0x277CBBB60];
      measurementDate = [(NTKHeartRateRichComplicationRectangularView *)self measurementDate];
      v23 = [v36 textProviderWithDate:measurementDate style:v35 units:v32];

      complicationDate2 = [MEMORY[0x277CBBAD8] complicationDate];
      [v23 setRelativeToDate:complicationDate2];

      [v23 setTimeTravelUpdateFrequency:0];
      [v23 setDisableOffsetPrefix:1];
    }

    v39 = +[NTKHeartRateComplicationUtilties heartrateTintColor];
    [v23 setTintColor:v39];

    v40 = MEMORY[0x277CBBBA0];
    v41 = NTKClockFaceLocalizedString(@"HEART_RATE_SIGNATURE_LARGE_CURRENT_READING_FORMAT", @"%1$@ %2$@");
    v42 = [v40 textProviderWithFormat:v41, v12, v23];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [v42 setTintColor:whiteColor2];

    titleLabel = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
    [titleLabel setTextProvider:v42];
  }

  else
  {
    v25 = MEMORY[0x277CBBB88];
    v26 = NTKClockFaceLocalizedString(@"HEART_RATE_TITLE", @"Heart Rate");
    v27 = [v25 textProviderWithText:v26];

    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [v27 setTintColor:whiteColor3];

    titleLabel2 = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
    [titleLabel2 setTextProvider:v27];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  measurementDate2 = [(NTKHeartRateRichComplicationRectangularView *)self measurementDate];
  v47 = [currentCalendar startOfDayForDate:measurementDate2];

  measurementDate3 = [(NTKHeartRateRichComplicationRectangularView *)self measurementDate];
  v49 = [currentCalendar hk_startOfDateByAddingDays:1 toDate:measurementDate3];

  v50 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v47 endDate:v49];
  [(NTKHeartRateRichComplicationRectangularView *)self setMeasurementDateDayInterval:v50];

  v51 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyDailyHighBPM"];
  [(NTKHeartRateRichComplicationRectangularView *)self setHighBPM:v51];

  dailyHighLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  highBPM = [(NTKHeartRateRichComplicationRectangularView *)self highBPM];
  [(NTKHeartRateRichComplicationRectangularView *)self _updateDailyLabel:dailyHighLabel withBPM:highBPM];

  v54 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyDailyLowBPM"];
  [(NTKHeartRateRichComplicationRectangularView *)self setLowBPM:v54];

  dailyLowLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyLowLabel];
  lowBPM = [(NTKHeartRateRichComplicationRectangularView *)self lowBPM];
  [(NTKHeartRateRichComplicationRectangularView *)self _updateDailyLabel:dailyLowLabel withBPM:lowBPM];

  v57 = [metadataCopy objectForKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyChartPoints"];
  [(NTKHeartRateRichComplicationRectangularView *)self setChartPoints:v57];

  v58 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    measurementDate4 = [(NTKHeartRateRichComplicationRectangularView *)self measurementDate];
    chartPoints = [(NTKHeartRateRichComplicationRectangularView *)self chartPoints];
    v61 = [chartPoints count];
    *buf = 138543618;
    v64 = measurementDate4;
    v65 = 2048;
    v66 = v61;
    _os_log_impl(&dword_22D9C5000, v58, OS_LOG_TYPE_DEFAULT, "NTKHeartRateRichComplicationRectangularView: Load with metadata. measurementDate? %{public}@, chartPointCount? %lu", buf, 0x16u);
  }
}

- (double)_xValueForPointFromChartPoint:(id)point inRect:(CGRect)rect
{
  xValue = [point xValue];
  MEMORY[0x2318D92B0]();

  measurementDateDayInterval = [(NTKHeartRateRichComplicationRectangularView *)self measurementDateDayInterval];
  startDate = [measurementDateDayInterval startDate];
  MEMORY[0x2318D92B0]();

  measurementDateDayInterval2 = [(NTKHeartRateRichComplicationRectangularView *)self measurementDateDayInterval];
  endDate = [measurementDateDayInterval2 endDate];
  MEMORY[0x2318D92B0]();

  FIUIChartRelativePositionForXPlaneValue();

  MEMORY[0x282161308](self);
  return result;
}

- (double)_yValueForPointFromChartPointValue:(id)value betweenHigh:(id)high andLow:(id)low inRect:(CGRect)rect
{
  lowCopy = low;
  highCopy = high;
  [value doubleValue];
  [lowCopy doubleValue];

  [highCopy doubleValue];
  FIUIChartRelativePositionForYPlaneValue();

  MEMORY[0x282161310](self);
  return result;
}

- (void)_updateDailyLabel:(id)label withBPM:(id)m
{
  labelCopy = label;
  if (m)
  {
    [MEMORY[0x277CCABB8] localizedStringFromNumber:m numberStyle:0];
  }

  else
  {
    +[NTKRichComplicationRectangularDailyGraphView dailyFormattedNoData];
  }
  v6 = ;
  [labelCopy setText:v6];

  accentColor = [(NTKRichComplicationRectangularDailyGraphView *)self accentColor];
  [labelCopy setTextColor:accentColor];
}

@end