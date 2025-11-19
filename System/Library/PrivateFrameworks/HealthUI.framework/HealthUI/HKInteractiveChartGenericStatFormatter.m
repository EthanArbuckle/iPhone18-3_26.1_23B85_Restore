@interface HKInteractiveChartGenericStatFormatter
+ (int64_t)mapSingleItemToStatisticsType:(id)a3;
- (id)_formattedAnnotationForDistributionChartData:(id)a3;
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4;
- (id)_makeSelectedRangeDataWithAvg:(double)a3 unit:(id)a4 showUnit:(BOOL)a5 statisticsType:(int64_t)a6;
- (id)_makeSelectedRangeDataWithMax:(double)a3 unit:(id)a4 prepend:(id)a5 statisticsType:(int64_t)a6;
- (id)_makeSelectedRangeDataWithMin:(double)a3 max:(double)a4 unit:(id)a5 statisticsType:(int64_t)a6;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4;
- (id)selectedRangeSeparatorString;
- (void)configureFormatterForDisplayType:(id)a3 quantityType:(id)a4 chartRangeProvider:(id)a5 timeScope:(int64_t)a6 context:(int64_t)a7;
@end

@implementation HKInteractiveChartGenericStatFormatter

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)a3 items:(id)a4
{
  v124[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v106 = v5;
  if (v5 && [v5 count])
  {
    v109 = v6;
    v107 = [v5 firstObject];
    v7 = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
    v8 = [v7 firstObject];
    v9 = [v8 integerValue];

    if ([v5 count] != 1 || (v9 & 0x100000) != 0 || objc_msgSend(v107, "representsRange") && (objc_msgSend(v107, "maxValue"), v11 = v10, objc_msgSend(v107, "minValue"), v11 - v12 > 2.22044605e-16))
    {
      if ([v107 representsRange])
      {
        [v107 minValue];
      }

      else
      {
        [v107 value];
      }

      v24 = v13;
      if ([v107 representsRange])
      {
        [v107 maxValue];
      }

      else
      {
        [v107 value];
      }

      v26 = v25;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      obj = v5;
      v27 = [obj countByEnumeratingWithState:&v116 objects:v123 count:16];
      if (v27)
      {
        v28 = 0;
        v29 = 0;
        v30 = *v117;
        v31 = *MEMORY[0x1E696B510];
        v32 = 0.0;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v117 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v116 + 1) + 8 * i);
            if ([v34 representsRange])
            {
              [v34 minValue];
              if (v35 < v24)
              {
                v24 = v35;
              }

              [v34 maxValue];
            }

            else
            {
              [v34 value];
              if (v37 < v24)
              {
                v24 = v37;
              }

              [v34 value];
            }

            if (v36 >= v26)
            {
              v26 = v36;
            }

            [v34 value];
            v39 = v38;
            v40 = [v34 recordCount];
            v41 = [v34 recordCount];
            v42 = [v34 statisticsInterval];
            [v42 hk_approximateDuration];
            v44 = HKUIEqualDoubles(v43, v31);

            if (v44)
            {
              v29 += [v34 recordCount];
            }

            else
            {
              v29 = 0;
            }

            v32 = v32 + v39 * v40;
            v28 += v41;
          }

          v27 = [obj countByEnumeratingWithState:&v116 objects:v123 count:16];
        }

        while (v27);
        v45 = v28;
      }

      else
      {
        v29 = 0;
        v45 = 0.0;
        v32 = 0.0;
      }

      v46 = [obj lastObject];
      [v46 value];
      v48 = v47;
      v49 = [obj firstObject];
      [v49 value];
      v51 = v50;

      if (v29 < 1)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v32 / v29;
      }

      v14 = [MEMORY[0x1E695DF70] array];
      if ([v109 count])
      {
        v53 = v109;
      }

      else
      {

        v53 = &unk_1F4381090;
      }

      v109 = v53;
      if ([v53 count])
      {
        v55 = 0;
        v56 = 0;
        v57 = v48 - v51;
        v58 = v48 - v51 < 0.0;
        if (v48 - v51 >= 0.0)
        {
          v59 = 6;
        }

        else
        {
          v59 = 7;
        }

        v105 = 9;
        v60 = v32 / v45;
        if (v58)
        {
          v61 = -v57;
        }

        else
        {
          v61 = v57;
        }

        *&v54 = 138412290;
        v104 = v54;
        do
        {
          v62 = [v109 objectAtIndexedSubscript:{v56, v104}];
          v63 = [v109 count];
          v64 = [v62 integerValue];
          v65 = v63 - 1;
          if (v64 > 2047)
          {
            if (v64 >= 0x8000)
            {
              if (v64 >= 0x80000)
              {
                if (v64 == 0x80000)
                {
                  v96 = v56 == v65;
                  if ([obj count] == 1)
                  {
                    v97 = 24;
                  }

                  else
                  {
                    v97 = 3;
                  }

                  v98 = [v107 unit];
                  v99 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:v98 unit:v96 showUnit:v97 statisticsType:v60];
                  [v14 addObject:v99];

                  goto LABEL_112;
                }

                if (v64 == 0x100000)
                {
                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v121 = 0x2020000000;
                  v122 = 0;
                  v112 = 0;
                  v113 = &v112;
                  v114 = 0x2020000000;
                  v115 = 0;
                  v111[0] = MEMORY[0x1E69E9820];
                  v111[1] = 3221225472;
                  v111[2] = __94__HKInteractiveChartGenericStatFormatter__formattedSelectedRangeLabelDataWithChartData_items___block_invoke;
                  v111[3] = &unk_1E81B6F78;
                  v111[4] = &buf;
                  v111[5] = &v112;
                  [obj enumerateObjectsUsingBlock:v111];
                  if ([obj count] == 1)
                  {
                    if ((*(*(&buf + 1) + 24) & 1) == 0)
                    {
                      v81 = [v107 unit];
                      v82 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithMin:v81 max:9 unit:v24 statisticsType:v26];
                      [v14 addObject:v82];
LABEL_111:

                      _Block_object_dispose(&v112, 8);
                      _Block_object_dispose(&buf, 8);
                      goto LABEL_112;
                    }

LABEL_104:
                    if (v113[3] >= v26)
                    {
                      v101 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                      v81 = [v101 localizedStringForKey:@"BELOW_MAXIMUM_DEPTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Charon"];
                    }

                    else
                    {
LABEL_105:
                      v81 = 0;
                    }

                    v82 = [v107 unit];
                    v102 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithMax:v82 unit:v81 prepend:29 statisticsType:v26];
                    [v14 addObject:v102];

                    goto LABEL_111;
                  }

                  if (*(*(&buf + 1) + 24))
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_105;
                }
              }

              else
              {
                if (v64 == 0x8000)
                {
                  v69 = 18;
                  goto LABEL_95;
                }

                if (v64 == 0x10000)
                {
                  v69 = 19;
LABEL_95:
                  v105 = v69;
                }
              }
            }

            else
            {
              if (v64 < 0x2000)
              {
                if (v64 == 2048)
                {
                  v85 = v56 == v65;
                  v86 = [v107 unit];
                  v87 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:v86 unit:v85 showUnit:14 statisticsType:v60];
                  [v14 addObject:v87];

                  goto LABEL_112;
                }

                if (v64 != 4096)
                {
                  goto LABEL_112;
                }

                goto LABEL_81;
              }

              if (v64 == 0x2000)
              {
                goto LABEL_81;
              }

              if (v64 == 0x4000)
              {
                v69 = 17;
                goto LABEL_95;
              }
            }
          }

          else
          {
            if (v64 > 31)
            {
              if (v64 > 511)
              {
                if (v64 == 512)
                {
                  v93 = v56 == v65;
                  v94 = [v107 unit];
                  v95 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:v94 unit:v93 showUnit:13 statisticsType:v60];
                  [v14 addObject:v95];
                }

                else if (v64 == 1024)
                {
                  v78 = v56 == v65;
                  v79 = [v107 unit];
                  v80 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:v79 unit:v78 showUnit:12 statisticsType:v60];
                  [v14 addObject:v80];
                }
              }

              else if (v64 == 32)
              {
                v88 = v56 == v65;
                v89 = [[HKSelectedRangeData alloc] initWithStatisticsType:v59];
                v90 = [v107 unit];
                v91 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v90 unit:v88 showUnit:v61];
                [(HKSelectedRangeData *)v89 setAttributedString:v91];

                v92 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
                [(HKSelectedRangeData *)v89 setValueAsNumber:v92];

                [v14 addObject:v89];
              }

              else if (v64 == 128)
              {
                if (v29 < 1)
                {
                  _HKInitializeLogging();
                  v100 = HKLogWellnessDashboard();
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = v104;
                    *(&buf + 4) = obj;
                    _os_log_error_impl(&dword_1C3942000, v100, OS_LOG_TYPE_ERROR, "Error formatting daily average with incoming chart data: %@", &buf, 0xCu);
                  }
                }

                else
                {
                  v66 = v56 == v65;
                  v67 = [v107 unit];
                  v68 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:v67 unit:v66 showUnit:8 statisticsType:v52];
                  [v14 addObject:v68];
                }
              }

              goto LABEL_112;
            }

            if (v64 > 7)
            {
              if (v64 != 8)
              {
                if (v64 == 16)
                {
                  v70 = v56 == v65;
                  v71 = [[HKSelectedRangeData alloc] initWithStatisticsType:5];
                  v72 = [v107 unit];
                  v73 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v72 unit:v70 showUnit:v32];
                  [(HKSelectedRangeData *)v71 setAttributedString:v73];

                  v74 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
                  [(HKSelectedRangeData *)v71 setValueAsNumber:v74];

                  [v14 addObject:v71];
                }

                goto LABEL_112;
              }

LABEL_81:
              v75 = v56 == v65;
              v76 = [v107 unit];
              v77 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:v76 unit:v75 showUnit:3 statisticsType:v60];
              [v14 addObject:v77];

              goto LABEL_112;
            }

            if (v64 == 2)
            {
              if ((v55 | 1) != 3)
              {
                v55 |= 1uLL;
                goto LABEL_112;
              }

LABEL_91:
              v83 = [v107 unit];
              v84 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithMin:v83 max:v105 unit:v24 statisticsType:v26];
              [v14 addObject:v84];

              v55 = 0;
              goto LABEL_112;
            }

            if (v64 == 4)
            {
              if ((v55 & 0xFFFFFFFFFFFFFFFDLL) != 1)
              {
                v55 = 2;
                goto LABEL_112;
              }

              goto LABEL_91;
            }
          }

LABEL_112:

          ++v56;
        }

        while (v56 < [v109 count]);
      }
    }

    else
    {
      v15 = [v109 firstObject];
      v16 = [HKInteractiveChartGenericStatFormatter mapSingleItemToStatisticsType:v15];

      if (!v16)
      {
        if ([v107 recordCount] <= 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 3;
        }
      }

      v17 = [[HKSelectedRangeData alloc] initWithStatisticsType:v16];
      [v107 minValue];
      v19 = v18;
      v20 = [v107 unit];
      v21 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v20 unit:1 showUnit:v19];
      [(HKSelectedRangeData *)v17 setAttributedString:v21];

      [(HKSelectedRangeData *)v17 setDataType:0];
      v22 = MEMORY[0x1E696AD98];
      [v107 minValue];
      v23 = [v22 numberWithDouble:?];
      [(HKSelectedRangeData *)v17 setValueAsNumber:v23];

      v124[0] = v17;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:1];
    }

    v6 = v109;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

uint64_t __94__HKInteractiveChartGenericStatFormatter__formattedSelectedRangeLabelDataWithChartData_items___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v10;
  if (isKindOfClass)
  {
    v5 = [v10 metadata];
    v6 = [v5 valueForKey:*MEMORY[0x1E696BB40]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 32) + 8) + 24) = [v6 BOOLValue];
      [v10 maxValue];
      v8 = *(*(a1 + 40) + 8);
      if (v7 < *(v8 + 24))
      {
        v7 = *(v8 + 24);
      }

      *(v8 + 24) = v7;
    }

    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v4);
}

- (void)configureFormatterForDisplayType:(id)a3 quantityType:(id)a4 chartRangeProvider:(id)a5 timeScope:(int64_t)a6 context:(int64_t)a7
{
  v28[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  objc_storeStrong(&self->_chartRangeProvider, a5);
  v15 = [v12 chartingRules];
  if ([v15 chartStyleForTimeScope:a6] == 3)
  {

LABEL_4:
    v18 = &unk_1F43810A8;
LABEL_5:
    [(HKInteractiveChartGenericStatFormatter *)self setConfiguredStatItems:v18];
    goto LABEL_6;
  }

  v16 = [v12 chartingRules];
  v17 = [v16 chartStyleForTimeScope:a6];

  if (v17 == 9)
  {
    goto LABEL_4;
  }

  v19 = [v13 identifier];
  v20 = [v19 isEqualToString:*MEMORY[0x1E696BD78]];

  if (v20)
  {
    v18 = &unk_1F43810C0;
    goto LABEL_5;
  }

  v21 = [v13 identifier];
  v22 = [v21 isEqualToString:*MEMORY[0x1E696BE08]];

  if (v22)
  {
    v18 = &unk_1F43810D8;
    goto LABEL_5;
  }

  if ([v12 displayTypeIdentifier] != 125)
  {
    if ([v13 aggregationStyle])
    {
      if (a6 == 2 || a7 == 1)
      {
        v18 = &unk_1F4381150;
      }

      else
      {
        v18 = &unk_1F4381168;
      }
    }

    else
    {
      if (a6 > 8)
      {
        goto LABEL_6;
      }

      if (((1 << a6) & 0x1C3) != 0)
      {
        v18 = &unk_1F4381138;
      }

      else if (((1 << a6) & 0xC) != 0)
      {
        v18 = &unk_1F4381120;
      }

      else if (a7 == 1)
      {
        v18 = &unk_1F43810F0;
      }

      else
      {
        v18 = &unk_1F4381108;
      }
    }

    goto LABEL_5;
  }

  v23 = (a7 == 0) << 6;
  v24 = v23 | 8;
  if ((a6 - 6) < 3)
  {
    v23 |= 0x10uLL;
  }

  if (a6 >= 6)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
  v28[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [(HKInteractiveChartGenericStatFormatter *)self setConfiguredStatItems:v27];

LABEL_6:
}

- (id)_makeSelectedRangeDataWithAvg:(double)a3 unit:(id)a4 showUnit:(BOOL)a5 statisticsType:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = [[HKSelectedRangeData alloc] initWithStatisticsType:a6];
  v12 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v10 unit:v7 showUnit:a3];

  [(HKSelectedRangeData *)v11 setAttributedString:v12];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HKSelectedRangeData *)v11 setValueAsNumber:v13];

  return v11;
}

- (id)_makeSelectedRangeDataWithMin:(double)a3 max:(double)a4 unit:(id)a5 statisticsType:(int64_t)a6
{
  v10 = a5;
  v11 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v10 unit:1 showUnit:a3];
  v12 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v10 unit:1 showUnit:a4];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v14 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:v10 number:v13];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v16 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:v10 number:v15];

  v26 = 0;
  v17 = objc_alloc_init(HKInteractiveChartNumberRangeFormatter);
  v18 = [(HKInteractiveChartDataFormatter *)self majorFont];
  v19 = [(HKInteractiveChartNumberRangeFormatter *)v17 attributedStringForMinimumString:v11 maximumString:v12 minimumUnitString:v14 maximumUnitString:v16 valueFont:v18 formatForChart:1 resultIsASingleValue:&v26];

  v20 = v26;
  v21 = [HKSelectedRangeData alloc];
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = a6;
  }

  if (v20)
  {
    a4 = a3;
  }

  v23 = [(HKSelectedRangeData *)v21 initWithStatisticsType:v22];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [(HKSelectedRangeData *)v23 setValueAsNumber:v24];

  [(HKSelectedRangeData *)v23 setAttributedString:v19];

  return v23;
}

- (id)_makeSelectedRangeDataWithMax:(double)a3 unit:(id)a4 prepend:(id)a5 statisticsType:(int64_t)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  v12 = [[HKSelectedRangeData alloc] initWithStatisticsType:a6];
  v13 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:v11 unit:1 showUnit:a3];

  if (v10)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v13];
    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
    [v14 insertAttributedString:v15 atIndex:0];

    v13 = v14;
  }

  v20[0] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = HKUIJoinAttributedStringsForLocale(v16);
  [(HKSelectedRangeData *)v12 setAttributedString:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HKSelectedRangeData *)v12 setValueAsNumber:v18];

  return v12;
}

- (id)selectedRangeSeparatorString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"RANGE_SEPARATOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)a3 context:(int64_t)a4
{
  v5 = a3;
  v6 = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];

  if (v6)
  {
    [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
  }

  else
  {
    [(HKInteractiveChartGenericStatFormatter *)self configuredStatItems];
  }
  v7 = ;
  v8 = [(HKInteractiveChartGenericStatFormatter *)self _formattedSelectedRangeLabelDataWithChartData:v5 items:v7];

  return v8;
}

+ (int64_t)mapSingleItemToStatisticsType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    v6 = 18;
    v7 = 19;
    v8 = 24;
    if (v5 != 0x80000)
    {
      v8 = 0;
    }

    if (v5 != 0x10000)
    {
      v7 = v8;
    }

    if (v5 != 0x8000)
    {
      v6 = v7;
    }

    v9 = 15;
    v10 = 16;
    v11 = 17;
    if (v5 != 0x4000)
    {
      v11 = 0;
    }

    if (v5 != 0x2000)
    {
      v10 = v11;
    }

    if (v5 != 4096)
    {
      v9 = v10;
    }

    if (v5 < 0x8000)
    {
      v6 = v9;
    }

    v12 = 13;
    v13 = 12;
    v14 = 14;
    if (v5 != 2048)
    {
      v14 = 0;
    }

    if (v5 != 1024)
    {
      v13 = v14;
    }

    if (v5 != 512)
    {
      v12 = v13;
    }

    v15 = 5;
    v16 = 8;
    v17 = 11;
    if (v5 != 256)
    {
      v17 = 0;
    }

    if (v5 != 128)
    {
      v16 = v17;
    }

    if (v5 != 16)
    {
      v15 = v16;
    }

    if (v5 <= 511)
    {
      v12 = v15;
    }

    if (v5 <= 4095)
    {
      v18 = v12;
    }

    else
    {
      v18 = v6;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_formattedAnnotationForDistributionChartData:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 firstObject];
  [v5 minimumValue];
  v7 = v6;
  [v5 maximumValue];
  v9 = v8;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        [v15 minimumValue];
        if (v16 < v7)
        {
          v7 = v16;
        }

        [v15 maximumValue];
        if (v17 >= v9)
        {
          v9 = v17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = [v5 unit];
  v19 = [(HKInteractiveChartGenericStatFormatter *)self _formatMin:v18 max:v7 unit:v9];

  v26 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];

  return v20;
}

@end