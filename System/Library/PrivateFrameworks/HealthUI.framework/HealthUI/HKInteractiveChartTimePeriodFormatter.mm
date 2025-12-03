@interface HKInteractiveChartTimePeriodFormatter
- (double)_boundedTimePeriodFromDataPoint:(id)point boundedValueRange:(id)range;
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data items:(id)items customDataType:(int64_t)type boundedValueRange:(id)range;
- (id)_formattedStringWithData:(id)data roundToHours:(BOOL)hours displayUnit:(BOOL)unit;
- (id)formattedBoundedSelectedRangeLabelDataWithChartData:(id)data items:(id)items customDataType:(int64_t)type chartRangeProvider:(id)provider;
@end

@implementation HKInteractiveChartTimePeriodFormatter

- (id)_formattedStringWithData:(id)data roundToHours:(BOOL)hours displayUnit:(BOOL)unit
{
  hoursCopy = hours;
  dataCopy = data;
  timePeriodFormatter = self->_timePeriodFormatter;
  if (!timePeriodFormatter)
  {
    unitController = [(HKInteractiveChartDataFormatter *)self unitController];
    displayType = [(HKInteractiveChartDataFormatter *)self displayType];
    v11 = [unitController unitForDisplayType:displayType];

    displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
    v13 = [displayType2 hk_numberFormatterForUnit:v11];

    v14 = [(HKDisplayTypeValueFormatter *)[HKTimePeriodDisplayTypeValueFormatter alloc] initWithNumberFormatter:v13];
    v15 = self->_timePeriodFormatter;
    self->_timePeriodFormatter = v14;

    timePeriodFormatter = self->_timePeriodFormatter;
  }

  v16 = MEMORY[0x1E696AD98];
  [dataCopy timePeriod];
  v17 = [v16 numberWithDouble:?];
  displayType3 = [(HKInteractiveChartDataFormatter *)self displayType];
  unitController2 = [(HKInteractiveChartDataFormatter *)self unitController];
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
  LOBYTE(v24) = 1;
  v22 = [(HKTimePeriodDisplayTypeValueFormatter *)timePeriodFormatter attributedStringFromValue:v17 roundToHours:hoursCopy displayType:displayType3 unitController:unitController2 valueFont:majorFont unitFont:minorFont formatForChart:v24];

  return v22;
}

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data items:(id)items customDataType:(int64_t)type boundedValueRange:(id)range
{
  v101[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  itemsCopy = items;
  rangeCopy = range;
  if (!dataCopy || ![dataCopy count])
  {
    v80 = MEMORY[0x1E695E0F0];
    goto LABEL_60;
  }

  firstObject = [dataCopy firstObject];
  if ([dataCopy count] == 1)
  {
    recordCount = [firstObject recordCount];
    if (!rangeCopy && recordCount <= 1)
    {
      v14 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
      [(HKSelectedRangeData *)v14 setDataType:type];
      v15 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:firstObject roundToHours:0 displayUnit:1];
      [(HKSelectedRangeData *)v14 setAttributedString:v15];

      v16 = MEMORY[0x1E696AD98];
      [firstObject timePeriod];
      v17 = [v16 numberWithDouble:?];
      [(HKSelectedRangeData *)v14 setValueAsNumber:v17];

      v101[0] = v14;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];
LABEL_58:

      goto LABEL_59;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = firstObject;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v18 = dataCopy;
    v19 = [v18 countByEnumeratingWithState:&v93 objects:v100 count:16];
    v86 = rangeCopy;
    v77 = dataCopy;
    v78 = itemsCopy;
    v76 = firstObject;
    obj = v18;
    if (v19)
    {
      v20 = v19;
      typeCopy = type;
      v21 = 0;
      v22 = 0;
      v84 = *v94;
      v23 = *MEMORY[0x1E696B510];
      v24 = 0.0;
      v25 = 0.0;
      v26 = v14;
      v27 = v14;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v94 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v93 + 1) + 8 * i);
          [v29 timePeriod];
          if (rangeCopy)
          {
            [(HKInteractiveChartTimePeriodFormatter *)self _boundedTimePeriodFromDataPoint:v29 boundedValueRange:rangeCopy];
          }

          v31 = v30;
          [(HKSelectedRangeData *)v26 timePeriod];
          if (v31 - v32 < 2.22044605e-16)
          {
            v33 = v29;

            v26 = v33;
          }

          [(HKSelectedRangeData *)v27 timePeriod];
          if (v31 - v34 <= 2.22044605e-16)
          {
            v88 = v27;
          }

          else
          {
            v35 = v29;

            v88 = v35;
          }

          recordCount2 = [v29 recordCount];
          recordCount3 = [v29 recordCount];
          statisticsInterval = [v29 statisticsInterval];
          [statisticsInterval hk_approximateDuration];
          v40 = HKUIEqualDoubles(v39, v23);

          if (v40)
          {
            v24 = v24 + v31 * [v29 recordCount];
            v22 += [v29 recordCount];
          }

          else
          {
            v22 = 0;
          }

          rangeCopy = v86;
          v25 = v25 + v31 * recordCount2;
          v21 += recordCount3;
          v27 = v88;
        }

        v20 = [obj countByEnumeratingWithState:&v93 objects:v100 count:16];
      }

      while (v20);

      v41 = v25 / v21;
      if (v22 < 1)
      {
        v79 = 0;
      }

      else
      {
        v24 = v24 / v22;
        v79 = 1;
      }

      itemsCopy = v78;
      type = typeCopy;
      v14 = v26;
    }

    else
    {

      v79 = 0;
      v25 = 0.0;
      v41 = NAN;
      v88 = v14;
      v24 = 0.0;
    }

    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v43 = itemsCopy;
    v44 = v42;
    v85 = v43;
    v45 = [v43 countByEnumeratingWithState:&v89 objects:v99 count:16];
    v80 = v42;
    if (!v45)
    {
LABEL_57:

      rangeCopy = v86;
      dataCopy = v77;
      itemsCopy = v78;
      firstObject = v76;
      goto LABEL_58;
    }

    v46 = v45;
    v47 = *v90;
    v82 = v14;
LABEL_34:
    v48 = 0;
    while (1)
    {
      if (*v90 != v47)
      {
        objc_enumerationMutation(v85);
      }

      integerValue = [*(*(&v89 + 1) + 8 * v48) integerValue];
      if (integerValue <= 7)
      {
        if (integerValue == 2)
        {
          v50 = [[HKSelectedRangeData alloc] initWithStatisticsType:1];
          [(HKSelectedRangeData *)v50 setDataType:type];
          v72 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:v14 roundToHours:0 displayUnit:0];
          [(HKSelectedRangeData *)v50 setAttributedString:v72];

          v58 = MEMORY[0x1E696AD98];
          v59 = v14;
LABEL_50:
          [(HKSelectedRangeData *)v59 timePeriod];
          v73 = [v58 numberWithDouble:?];
          [(HKSelectedRangeData *)v50 setValueAsNumber:v73];

          [v44 addObject:v50];
LABEL_51:

          goto LABEL_52;
        }

        if (integerValue == 4)
        {
          v50 = [[HKSelectedRangeData alloc] initWithStatisticsType:2];
          [(HKSelectedRangeData *)v50 setDataType:type];
          v57 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:v88 roundToHours:0 displayUnit:0];
          [(HKSelectedRangeData *)v50 setAttributedString:v57];

          v58 = MEMORY[0x1E696AD98];
          v59 = v88;
          v44 = v80;
          goto LABEL_50;
        }
      }

      else
      {
        switch(integerValue)
        {
          case 8:
            v50 = objc_alloc_init(HKInteractiveChartTimePeriodData);
            [(HKSelectedRangeData *)v50 setTimePeriod:v41];
            timePeriodPrefix = [(HKSelectedRangeData *)v14 timePeriodPrefix];
            [(HKSelectedRangeData *)v50 setTimePeriodPrefix:timePeriodPrefix];

            displayType = [(HKInteractiveChartDataFormatter *)self displayType];
            v62 = [displayType displayTypeIdentifier] == 70;

            v63 = [[HKSelectedRangeData alloc] initWithStatisticsType:3];
            [(HKSelectedRangeData *)v63 setDataType:type];
            v64 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:v50 roundToHours:v62 displayUnit:0];
            [(HKSelectedRangeData *)v63 setAttributedString:v64];

            v65 = MEMORY[0x1E696AD98];
            v66 = v41;
LABEL_48:
            v71 = [v65 numberWithDouble:v66];
            [(HKSelectedRangeData *)v63 setValueAsNumber:v71];

            v14 = v82;
            [v44 addObject:v63];

            goto LABEL_51;
          case 16:
            v50 = objc_alloc_init(HKInteractiveChartTimePeriodData);
            [(HKSelectedRangeData *)v50 setTimePeriod:v25];
            timePeriodPrefix2 = [(HKSelectedRangeData *)v14 timePeriodPrefix];
            [(HKSelectedRangeData *)v50 setTimePeriodPrefix:timePeriodPrefix2];

            displayType2 = [(HKInteractiveChartDataFormatter *)self displayType];
            v69 = [displayType2 displayTypeIdentifier] == 70;

            v63 = [[HKSelectedRangeData alloc] initWithStatisticsType:5];
            [(HKSelectedRangeData *)v63 setDataType:type];
            v70 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:v50 roundToHours:v69 displayUnit:0];
            [(HKSelectedRangeData *)v63 setAttributedString:v70];

            v65 = MEMORY[0x1E696AD98];
            v66 = v25;
            goto LABEL_48;
          case 128:
            if (v79)
            {
              v50 = [[HKSelectedRangeData alloc] initWithStatisticsType:8];
              [(HKSelectedRangeData *)v50 setDataType:type];
              v51 = objc_alloc_init(HKInteractiveChartTimePeriodData);
              [(HKInteractiveChartTimePeriodData *)v51 setTimePeriod:v24];
              timePeriodPrefix3 = [(HKSelectedRangeData *)v82 timePeriodPrefix];
              [(HKInteractiveChartTimePeriodData *)v51 setTimePeriodPrefix:timePeriodPrefix3];

              displayType3 = [(HKInteractiveChartDataFormatter *)self displayType];
              v54 = [displayType3 displayTypeIdentifier] == 70;

              v44 = v80;
              v55 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:v51 roundToHours:v54 displayUnit:0];
              [(HKSelectedRangeData *)v50 setAttributedString:v55];

              v56 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
              [(HKSelectedRangeData *)v50 setValueAsNumber:v56];

              [v80 addObject:v50];
              v14 = v82;
            }

            else
            {
              _HKInitializeLogging();
              v50 = HKLogWellnessDashboard();
              if (os_log_type_enabled(&v50->super, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v98 = obj;
                _os_log_error_impl(&dword_1C3942000, &v50->super, OS_LOG_TYPE_ERROR, "Error formatting daily average with incoming chart data: %@", buf, 0xCu);
              }
            }

            goto LABEL_51;
        }
      }

LABEL_52:
      if (v46 == ++v48)
      {
        v74 = [v85 countByEnumeratingWithState:&v89 objects:v99 count:16];
        v46 = v74;
        if (!v74)
        {
          goto LABEL_57;
        }

        goto LABEL_34;
      }
    }
  }

  v80 = MEMORY[0x1E695E0F0];
LABEL_59:

LABEL_60:

  return v80;
}

- (double)_boundedTimePeriodFromDataPoint:(id)point boundedValueRange:(id)range
{
  pointCopy = point;
  rangeCopy = range;
  startDate = [pointCopy startDate];
  v8 = 0.0;
  v9 = 0.0;
  if (startDate)
  {
    v10 = startDate;
    startDate2 = [rangeCopy startDate];
    startDate3 = [pointCopy startDate];
    v13 = [startDate2 hk_isAfterDate:startDate3];

    if (v13)
    {
      startDate4 = [rangeCopy startDate];
      startDate5 = [pointCopy startDate];
      [startDate4 timeIntervalSinceDate:startDate5];
      v9 = v16;
    }
  }

  endDate = [pointCopy endDate];
  if (endDate)
  {
    v18 = endDate;
    endDate2 = [rangeCopy endDate];
    endDate3 = [pointCopy endDate];
    v21 = [endDate2 hk_isBeforeDate:endDate3];

    if (v21)
    {
      endDate4 = [pointCopy endDate];
      endDate5 = [rangeCopy endDate];
      [endDate4 timeIntervalSinceDate:endDate5];
      v8 = v24;
    }
  }

  [pointCopy timePeriod];
  v26 = v25 - v9 - v8;

  return v26;
}

- (id)formattedBoundedSelectedRangeLabelDataWithChartData:(id)data items:(id)items customDataType:(int64_t)type chartRangeProvider:(id)provider
{
  itemsCopy = items;
  dataCopy = data;
  actualVisibleRange = [provider actualVisibleRange];
  v13 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedSelectedRangeLabelDataWithChartData:dataCopy items:itemsCopy customDataType:type boundedValueRange:actualVisibleRange];

  return v13;
}

@end