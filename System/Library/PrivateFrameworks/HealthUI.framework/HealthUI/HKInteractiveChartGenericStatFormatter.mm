@interface HKInteractiveChartGenericStatFormatter
+ (int64_t)mapSingleItemToStatisticsType:(id)type;
- (id)_formattedAnnotationForDistributionChartData:(id)data;
- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data items:(id)items;
- (id)_makeSelectedRangeDataWithAvg:(double)avg unit:(id)unit showUnit:(BOOL)showUnit statisticsType:(int64_t)type;
- (id)_makeSelectedRangeDataWithMax:(double)max unit:(id)unit prepend:(id)prepend statisticsType:(int64_t)type;
- (id)_makeSelectedRangeDataWithMin:(double)min max:(double)max unit:(id)unit statisticsType:(int64_t)type;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (id)selectedRangeSeparatorString;
- (void)configureFormatterForDisplayType:(id)type quantityType:(id)quantityType chartRangeProvider:(id)provider timeScope:(int64_t)scope context:(int64_t)context;
@end

@implementation HKInteractiveChartGenericStatFormatter

- (id)_formattedSelectedRangeLabelDataWithChartData:(id)data items:(id)items
{
  v124[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  itemsCopy = items;
  v106 = dataCopy;
  if (dataCopy && [dataCopy count])
  {
    v109 = itemsCopy;
    firstObject = [dataCopy firstObject];
    overrideStatFormatterItemOptions = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
    firstObject2 = [overrideStatFormatterItemOptions firstObject];
    integerValue = [firstObject2 integerValue];

    if ([dataCopy count] != 1 || (integerValue & 0x100000) != 0 || objc_msgSend(firstObject, "representsRange") && (objc_msgSend(firstObject, "maxValue"), v11 = v10, objc_msgSend(firstObject, "minValue"), v11 - v12 > 2.22044605e-16))
    {
      if ([firstObject representsRange])
      {
        [firstObject minValue];
      }

      else
      {
        [firstObject value];
      }

      v24 = v13;
      if ([firstObject representsRange])
      {
        [firstObject maxValue];
      }

      else
      {
        [firstObject value];
      }

      v26 = v25;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      obj = dataCopy;
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
            recordCount = [v34 recordCount];
            recordCount2 = [v34 recordCount];
            statisticsInterval = [v34 statisticsInterval];
            [statisticsInterval hk_approximateDuration];
            v44 = HKUIEqualDoubles(v43, v31);

            if (v44)
            {
              v29 += [v34 recordCount];
            }

            else
            {
              v29 = 0;
            }

            v32 = v32 + v39 * recordCount;
            v28 += recordCount2;
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

      lastObject = [obj lastObject];
      [lastObject value];
      v48 = v47;
      firstObject3 = [obj firstObject];
      [firstObject3 value];
      v51 = v50;

      if (v29 < 1)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v32 / v29;
      }

      array = [MEMORY[0x1E695DF70] array];
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
          integerValue2 = [v62 integerValue];
          v65 = v63 - 1;
          if (integerValue2 > 2047)
          {
            if (integerValue2 >= 0x8000)
            {
              if (integerValue2 >= 0x80000)
              {
                if (integerValue2 == 0x80000)
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

                  unit = [firstObject unit];
                  v99 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:unit unit:v96 showUnit:v97 statisticsType:v60];
                  [array addObject:v99];

                  goto LABEL_112;
                }

                if (integerValue2 == 0x100000)
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
                      unit2 = [firstObject unit];
                      unit3 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithMin:unit2 max:9 unit:v24 statisticsType:v26];
                      [array addObject:unit3];
LABEL_111:

                      _Block_object_dispose(&v112, 8);
                      _Block_object_dispose(&buf, 8);
                      goto LABEL_112;
                    }

LABEL_104:
                    if (v113[3] >= v26)
                    {
                      v101 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
                      unit2 = [v101 localizedStringForKey:@"BELOW_MAXIMUM_DEPTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Charon"];
                    }

                    else
                    {
LABEL_105:
                      unit2 = 0;
                    }

                    unit3 = [firstObject unit];
                    v102 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithMax:unit3 unit:unit2 prepend:29 statisticsType:v26];
                    [array addObject:v102];

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
                if (integerValue2 == 0x8000)
                {
                  v69 = 18;
                  goto LABEL_95;
                }

                if (integerValue2 == 0x10000)
                {
                  v69 = 19;
LABEL_95:
                  v105 = v69;
                }
              }
            }

            else
            {
              if (integerValue2 < 0x2000)
              {
                if (integerValue2 == 2048)
                {
                  v85 = v56 == v65;
                  unit4 = [firstObject unit];
                  v87 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:unit4 unit:v85 showUnit:14 statisticsType:v60];
                  [array addObject:v87];

                  goto LABEL_112;
                }

                if (integerValue2 != 4096)
                {
                  goto LABEL_112;
                }

                goto LABEL_81;
              }

              if (integerValue2 == 0x2000)
              {
                goto LABEL_81;
              }

              if (integerValue2 == 0x4000)
              {
                v69 = 17;
                goto LABEL_95;
              }
            }
          }

          else
          {
            if (integerValue2 > 31)
            {
              if (integerValue2 > 511)
              {
                if (integerValue2 == 512)
                {
                  v93 = v56 == v65;
                  unit5 = [firstObject unit];
                  v95 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:unit5 unit:v93 showUnit:13 statisticsType:v60];
                  [array addObject:v95];
                }

                else if (integerValue2 == 1024)
                {
                  v78 = v56 == v65;
                  unit6 = [firstObject unit];
                  v80 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:unit6 unit:v78 showUnit:12 statisticsType:v60];
                  [array addObject:v80];
                }
              }

              else if (integerValue2 == 32)
              {
                v88 = v56 == v65;
                v89 = [[HKSelectedRangeData alloc] initWithStatisticsType:v59];
                unit7 = [firstObject unit];
                v91 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unit7 unit:v88 showUnit:v61];
                [(HKSelectedRangeData *)v89 setAttributedString:v91];

                v92 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
                [(HKSelectedRangeData *)v89 setValueAsNumber:v92];

                [array addObject:v89];
              }

              else if (integerValue2 == 128)
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
                  unit8 = [firstObject unit];
                  v68 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:unit8 unit:v66 showUnit:8 statisticsType:v52];
                  [array addObject:v68];
                }
              }

              goto LABEL_112;
            }

            if (integerValue2 > 7)
            {
              if (integerValue2 != 8)
              {
                if (integerValue2 == 16)
                {
                  v70 = v56 == v65;
                  v71 = [[HKSelectedRangeData alloc] initWithStatisticsType:5];
                  unit9 = [firstObject unit];
                  v73 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unit9 unit:v70 showUnit:v32];
                  [(HKSelectedRangeData *)v71 setAttributedString:v73];

                  v74 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
                  [(HKSelectedRangeData *)v71 setValueAsNumber:v74];

                  [array addObject:v71];
                }

                goto LABEL_112;
              }

LABEL_81:
              v75 = v56 == v65;
              unit10 = [firstObject unit];
              v77 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithAvg:unit10 unit:v75 showUnit:3 statisticsType:v60];
              [array addObject:v77];

              goto LABEL_112;
            }

            if (integerValue2 == 2)
            {
              if ((v55 | 1) != 3)
              {
                v55 |= 1uLL;
                goto LABEL_112;
              }

LABEL_91:
              unit11 = [firstObject unit];
              v84 = [(HKInteractiveChartGenericStatFormatter *)self _makeSelectedRangeDataWithMin:unit11 max:v105 unit:v24 statisticsType:v26];
              [array addObject:v84];

              v55 = 0;
              goto LABEL_112;
            }

            if (integerValue2 == 4)
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
      firstObject4 = [v109 firstObject];
      v16 = [HKInteractiveChartGenericStatFormatter mapSingleItemToStatisticsType:firstObject4];

      if (!v16)
      {
        if ([firstObject recordCount] <= 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 3;
        }
      }

      v17 = [[HKSelectedRangeData alloc] initWithStatisticsType:v16];
      [firstObject minValue];
      v19 = v18;
      unit12 = [firstObject unit];
      v21 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unit12 unit:1 showUnit:v19];
      [(HKSelectedRangeData *)v17 setAttributedString:v21];

      [(HKSelectedRangeData *)v17 setDataType:0];
      v22 = MEMORY[0x1E696AD98];
      [firstObject minValue];
      v23 = [v22 numberWithDouble:?];
      [(HKSelectedRangeData *)v17 setValueAsNumber:v23];

      v124[0] = v17;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:1];
    }

    itemsCopy = v109;
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
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

- (void)configureFormatterForDisplayType:(id)type quantityType:(id)quantityType chartRangeProvider:(id)provider timeScope:(int64_t)scope context:(int64_t)context
{
  v28[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  quantityTypeCopy = quantityType;
  providerCopy = provider;
  objc_storeStrong(&self->_chartRangeProvider, provider);
  chartingRules = [typeCopy chartingRules];
  if ([chartingRules chartStyleForTimeScope:scope] == 3)
  {

LABEL_4:
    v18 = &unk_1F43810A8;
LABEL_5:
    [(HKInteractiveChartGenericStatFormatter *)self setConfiguredStatItems:v18];
    goto LABEL_6;
  }

  chartingRules2 = [typeCopy chartingRules];
  v17 = [chartingRules2 chartStyleForTimeScope:scope];

  if (v17 == 9)
  {
    goto LABEL_4;
  }

  identifier = [quantityTypeCopy identifier];
  v20 = [identifier isEqualToString:*MEMORY[0x1E696BD78]];

  if (v20)
  {
    v18 = &unk_1F43810C0;
    goto LABEL_5;
  }

  identifier2 = [quantityTypeCopy identifier];
  v22 = [identifier2 isEqualToString:*MEMORY[0x1E696BE08]];

  if (v22)
  {
    v18 = &unk_1F43810D8;
    goto LABEL_5;
  }

  if ([typeCopy displayTypeIdentifier] != 125)
  {
    if ([quantityTypeCopy aggregationStyle])
    {
      if (scope == 2 || context == 1)
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
      if (scope > 8)
      {
        goto LABEL_6;
      }

      if (((1 << scope) & 0x1C3) != 0)
      {
        v18 = &unk_1F4381138;
      }

      else if (((1 << scope) & 0xC) != 0)
      {
        v18 = &unk_1F4381120;
      }

      else if (context == 1)
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

  v23 = (context == 0) << 6;
  v24 = v23 | 8;
  if ((scope - 6) < 3)
  {
    v23 |= 0x10uLL;
  }

  if (scope >= 6)
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

- (id)_makeSelectedRangeDataWithAvg:(double)avg unit:(id)unit showUnit:(BOOL)showUnit statisticsType:(int64_t)type
{
  showUnitCopy = showUnit;
  unitCopy = unit;
  v11 = [[HKSelectedRangeData alloc] initWithStatisticsType:type];
  v12 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unitCopy unit:showUnitCopy showUnit:avg];

  [(HKSelectedRangeData *)v11 setAttributedString:v12];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:avg];
  [(HKSelectedRangeData *)v11 setValueAsNumber:v13];

  return v11;
}

- (id)_makeSelectedRangeDataWithMin:(double)min max:(double)max unit:(id)unit statisticsType:(int64_t)type
{
  unitCopy = unit;
  v11 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unitCopy unit:1 showUnit:min];
  v12 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unitCopy unit:1 showUnit:max];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:min];
  v14 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:unitCopy number:v13];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:max];
  v16 = [(HKInteractiveChartDataFormatter *)self unitStringFromUnit:unitCopy number:v15];

  v26 = 0;
  v17 = objc_alloc_init(HKInteractiveChartNumberRangeFormatter);
  majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
  v19 = [(HKInteractiveChartNumberRangeFormatter *)v17 attributedStringForMinimumString:v11 maximumString:v12 minimumUnitString:v14 maximumUnitString:v16 valueFont:majorFont formatForChart:1 resultIsASingleValue:&v26];

  v20 = v26;
  v21 = [HKSelectedRangeData alloc];
  if (v20)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = type;
  }

  if (v20)
  {
    max = min;
  }

  v23 = [(HKSelectedRangeData *)v21 initWithStatisticsType:typeCopy];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:max];
  [(HKSelectedRangeData *)v23 setValueAsNumber:v24];

  [(HKSelectedRangeData *)v23 setAttributedString:v19];

  return v23;
}

- (id)_makeSelectedRangeDataWithMax:(double)max unit:(id)unit prepend:(id)prepend statisticsType:(int64_t)type
{
  v20[1] = *MEMORY[0x1E69E9840];
  prependCopy = prepend;
  unitCopy = unit;
  v12 = [[HKSelectedRangeData alloc] initWithStatisticsType:type];
  v13 = [(HKInteractiveChartDataFormatter *)self attributedStringWithValue:unitCopy unit:1 showUnit:max];

  if (prependCopy)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v13];
    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:prependCopy];
    [v14 insertAttributedString:v15 atIndex:0];

    v13 = v14;
  }

  v20[0] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = HKUIJoinAttributedStringsForLocale(v16);
  [(HKSelectedRangeData *)v12 setAttributedString:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:max];
  [(HKSelectedRangeData *)v12 setValueAsNumber:v18];

  return v12;
}

- (id)selectedRangeSeparatorString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"RANGE_SEPARATOR" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  dataCopy = data;
  overrideStatFormatterItemOptions = [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];

  if (overrideStatFormatterItemOptions)
  {
    [(HKInteractiveChartGenericStatFormatter *)self overrideStatFormatterItemOptions];
  }

  else
  {
    [(HKInteractiveChartGenericStatFormatter *)self configuredStatItems];
  }
  v7 = ;
  v8 = [(HKInteractiveChartGenericStatFormatter *)self _formattedSelectedRangeLabelDataWithChartData:dataCopy items:v7];

  return v8;
}

+ (int64_t)mapSingleItemToStatisticsType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    integerValue = [typeCopy integerValue];
    v6 = 18;
    v7 = 19;
    v8 = 24;
    if (integerValue != 0x80000)
    {
      v8 = 0;
    }

    if (integerValue != 0x10000)
    {
      v7 = v8;
    }

    if (integerValue != 0x8000)
    {
      v6 = v7;
    }

    v9 = 15;
    v10 = 16;
    v11 = 17;
    if (integerValue != 0x4000)
    {
      v11 = 0;
    }

    if (integerValue != 0x2000)
    {
      v10 = v11;
    }

    if (integerValue != 4096)
    {
      v9 = v10;
    }

    if (integerValue < 0x8000)
    {
      v6 = v9;
    }

    v12 = 13;
    v13 = 12;
    v14 = 14;
    if (integerValue != 2048)
    {
      v14 = 0;
    }

    if (integerValue != 1024)
    {
      v13 = v14;
    }

    if (integerValue != 512)
    {
      v12 = v13;
    }

    v15 = 5;
    v16 = 8;
    v17 = 11;
    if (integerValue != 256)
    {
      v17 = 0;
    }

    if (integerValue != 128)
    {
      v16 = v17;
    }

    if (integerValue != 16)
    {
      v15 = v16;
    }

    if (integerValue <= 511)
    {
      v12 = v15;
    }

    if (integerValue <= 4095)
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

- (id)_formattedAnnotationForDistributionChartData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  firstObject = [dataCopy firstObject];
  [firstObject minimumValue];
  v7 = v6;
  [firstObject maximumValue];
  v9 = v8;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = dataCopy;
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

  unit = [firstObject unit];
  v19 = [(HKInteractiveChartGenericStatFormatter *)self _formatMin:unit max:v7 unit:v9];

  v26 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];

  return v20;
}

@end