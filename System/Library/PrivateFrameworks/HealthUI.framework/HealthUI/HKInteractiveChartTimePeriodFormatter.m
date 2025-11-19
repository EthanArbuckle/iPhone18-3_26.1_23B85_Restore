@interface HKInteractiveChartTimePeriodFormatter
- (double)_boundedTimePeriodFromDataPoint:(id)a3 boundedValueRange:(id)a4;
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4 customDataType:(int64_t)a5 boundedValueRange:(id)a6;
- (id)_formattedStringWithData:(id)a3 roundToHours:(BOOL)a4 displayUnit:(BOOL)a5;
- (id)formattedBoundedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4 customDataType:(int64_t)a5 chartRangeProvider:(id)a6;
@end

@implementation HKInteractiveChartTimePeriodFormatter

- (id)_formattedStringWithData:(id)a3 roundToHours:(BOOL)a4 displayUnit:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  timePeriodFormatter = self->_timePeriodFormatter;
  if (!timePeriodFormatter)
  {
    v9 = [(HKInteractiveChartDataFormatter *)self unitController];
    v10 = [(HKInteractiveChartDataFormatter *)self displayType];
    v11 = [v9 unitForDisplayType:v10];

    v12 = [(HKInteractiveChartDataFormatter *)self displayType];
    v13 = [v12 hk_numberFormatterForUnit:v11];

    v14 = [(HKDisplayTypeValueFormatter *)[HKTimePeriodDisplayTypeValueFormatter alloc] initWithNumberFormatter:v13];
    v15 = self->_timePeriodFormatter;
    self->_timePeriodFormatter = v14;

    timePeriodFormatter = self->_timePeriodFormatter;
  }

  v16 = MEMORY[0x1E696AD98];
  [v7 timePeriod];
  v17 = [v16 numberWithDouble:?];
  v18 = [(HKInteractiveChartDataFormatter *)self displayType];
  v19 = [(HKInteractiveChartDataFormatter *)self unitController];
  v20 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v21 = [(HKInteractiveChartDataFormatter *)self minorFont];
  LOBYTE(v24) = 1;
  v22 = [(HKTimePeriodDisplayTypeValueFormatter *)timePeriodFormatter attributedStringFromValue:v17 roundToHours:v5 displayType:v18 unitController:v19 valueFont:v20 unitFont:v21 formatForChart:v24];

  return v22;
}

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4 customDataType:(int64_t)a5 boundedValueRange:(id)a6
{
  v101[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (!v9 || ![v9 count])
  {
    v80 = MEMORY[0x1E695E0F0];
    goto LABEL_60;
  }

  v12 = [v9 firstObject];
  if ([v9 count] == 1)
  {
    v13 = [v12 recordCount];
    if (!v11 && v13 <= 1)
    {
      v14 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
      [(HKSelectedRangeData *)v14 setDataType:a5];
      v15 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:v12 roundToHours:0 displayUnit:1];
      [(HKSelectedRangeData *)v14 setAttributedString:v15];

      v16 = MEMORY[0x1E696AD98];
      [v12 timePeriod];
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
    v14 = v12;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v93 objects:v100 count:16];
    v86 = v11;
    v77 = v9;
    v78 = v10;
    v76 = v12;
    obj = v18;
    if (v19)
    {
      v20 = v19;
      v81 = a5;
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
          if (v11)
          {
            [(HKInteractiveChartTimePeriodFormatter *)self _boundedTimePeriodFromDataPoint:v29 boundedValueRange:v11];
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

          v36 = [v29 recordCount];
          v37 = [v29 recordCount];
          v38 = [v29 statisticsInterval];
          [v38 hk_approximateDuration];
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

          v11 = v86;
          v25 = v25 + v31 * v36;
          v21 += v37;
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

      v10 = v78;
      a5 = v81;
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
    v43 = v10;
    v44 = v42;
    v85 = v43;
    v45 = [v43 countByEnumeratingWithState:&v89 objects:v99 count:16];
    v80 = v42;
    if (!v45)
    {
LABEL_57:

      v11 = v86;
      v9 = v77;
      v10 = v78;
      v12 = v76;
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

      v49 = [*(*(&v89 + 1) + 8 * v48) integerValue];
      if (v49 <= 7)
      {
        if (v49 == 2)
        {
          v50 = [[HKSelectedRangeData alloc] initWithStatisticsType:1];
          [(HKSelectedRangeData *)v50 setDataType:a5];
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

        if (v49 == 4)
        {
          v50 = [[HKSelectedRangeData alloc] initWithStatisticsType:2];
          [(HKSelectedRangeData *)v50 setDataType:a5];
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
        switch(v49)
        {
          case 8:
            v50 = objc_alloc_init(HKInteractiveChartTimePeriodData);
            [(HKSelectedRangeData *)v50 setTimePeriod:v41];
            v60 = [(HKSelectedRangeData *)v14 timePeriodPrefix];
            [(HKSelectedRangeData *)v50 setTimePeriodPrefix:v60];

            v61 = [(HKInteractiveChartDataFormatter *)self displayType];
            v62 = [v61 displayTypeIdentifier] == 70;

            v63 = [[HKSelectedRangeData alloc] initWithStatisticsType:3];
            [(HKSelectedRangeData *)v63 setDataType:a5];
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
            v67 = [(HKSelectedRangeData *)v14 timePeriodPrefix];
            [(HKSelectedRangeData *)v50 setTimePeriodPrefix:v67];

            v68 = [(HKInteractiveChartDataFormatter *)self displayType];
            v69 = [v68 displayTypeIdentifier] == 70;

            v63 = [[HKSelectedRangeData alloc] initWithStatisticsType:5];
            [(HKSelectedRangeData *)v63 setDataType:a5];
            v70 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedStringWithData:v50 roundToHours:v69 displayUnit:0];
            [(HKSelectedRangeData *)v63 setAttributedString:v70];

            v65 = MEMORY[0x1E696AD98];
            v66 = v25;
            goto LABEL_48;
          case 128:
            if (v79)
            {
              v50 = [[HKSelectedRangeData alloc] initWithStatisticsType:8];
              [(HKSelectedRangeData *)v50 setDataType:a5];
              v51 = objc_alloc_init(HKInteractiveChartTimePeriodData);
              [(HKInteractiveChartTimePeriodData *)v51 setTimePeriod:v24];
              v52 = [(HKSelectedRangeData *)v82 timePeriodPrefix];
              [(HKInteractiveChartTimePeriodData *)v51 setTimePeriodPrefix:v52];

              v53 = [(HKInteractiveChartDataFormatter *)self displayType];
              v54 = [v53 displayTypeIdentifier] == 70;

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

- (double)_boundedTimePeriodFromDataPoint:(id)a3 boundedValueRange:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 startDate];
  v8 = 0.0;
  v9 = 0.0;
  if (v7)
  {
    v10 = v7;
    v11 = [v6 startDate];
    v12 = [v5 startDate];
    v13 = [v11 hk_isAfterDate:v12];

    if (v13)
    {
      v14 = [v6 startDate];
      v15 = [v5 startDate];
      [v14 timeIntervalSinceDate:v15];
      v9 = v16;
    }
  }

  v17 = [v5 endDate];
  if (v17)
  {
    v18 = v17;
    v19 = [v6 endDate];
    v20 = [v5 endDate];
    v21 = [v19 hk_isBeforeDate:v20];

    if (v21)
    {
      v22 = [v5 endDate];
      v23 = [v6 endDate];
      [v22 timeIntervalSinceDate:v23];
      v8 = v24;
    }
  }

  [v5 timePeriod];
  v26 = v25 - v9 - v8;

  return v26;
}

- (id)formattedBoundedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4 customDataType:(int64_t)a5 chartRangeProvider:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a6 actualVisibleRange];
  v13 = [(HKInteractiveChartTimePeriodFormatter *)self _formattedSelectedRangeLabelDataWithChartData:v11 items:v10 customDataType:a5 boundedValueRange:v12];

  return v13;
}

@end