@interface HKSelectedRangeFormatter
- (HKSelectedRangeFormatter)initWithUnitPreferenceController:(id)controller;
- (id)_formatterForDisplayType:(id)type timeScope:(int64_t)scope majorFont:(id)font minorFont:(id)minorFont;
- (id)_handwashingStatFormatterItemOptionsForTimePeriodTimeScope:(int64_t)scope;
- (id)_statFormatterItemOptionsForTimePeriodDisplayType:(id)type timeScope:(int64_t)scope context:(int64_t)context;
- (id)selectedRangeDataWithChartData:(id)data majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context;
- (id)selectedRangeDataWithCoordinateInfo:(id)info majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context;
- (id)selectedRangeDataWithCoordinates:(id)coordinates majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context;
- (id)selectedRangeDataWithGraphView:(id)view majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context;
@end

@implementation HKSelectedRangeFormatter

- (HKSelectedRangeFormatter)initWithUnitPreferenceController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = HKSelectedRangeFormatter;
  v5 = [(HKSelectedRangeFormatter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(HKSelectedRangeFormatter *)v5 setChartRangeProvider:0];
    [(HKSelectedRangeFormatter *)v6 setUnitPreferenceController:controllerCopy];
    v7 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [(HKSelectedRangeFormatter *)v6 setMajorFont:v7];

    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    [(HKSelectedRangeFormatter *)v6 setMinorFont:v8];
  }

  return v6;
}

- (id)selectedRangeDataWithCoordinates:(id)coordinates majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context
{
  v14 = MEMORY[0x1E695DF70];
  typeCopy = type;
  minorFontCopy = minorFont;
  fontCopy = font;
  coordinatesCopy = coordinates;
  array = [v14 array];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __111__HKSelectedRangeFormatter_selectedRangeDataWithCoordinates_majorFont_minorFont_displayType_timeScope_context___block_invoke;
  v23[3] = &unk_1E81B9C68;
  v24 = array;
  v20 = array;
  [coordinatesCopy enumerateObjectsUsingBlock:v23];

  v21 = [(HKSelectedRangeFormatter *)self selectedRangeDataWithCoordinateInfo:v20 majorFont:fontCopy minorFont:minorFontCopy displayType:typeCopy timeScope:scope context:context];

  return v21;
}

void __111__HKSelectedRangeFormatter_selectedRangeDataWithCoordinates_majorFont_minorFont_displayType_timeScope_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 userInfo];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 userInfo];
    [v4 addObject:v5];
  }
}

- (id)selectedRangeDataWithGraphView:(id)view majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context
{
  viewCopy = view;
  fontCopy = font;
  minorFontCopy = minorFont;
  typeCopy = type;
  array = [MEMORY[0x1E695DF70] array];
  primarySeries = [viewCopy primarySeries];
  if (primarySeries)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __109__HKSelectedRangeFormatter_selectedRangeDataWithGraphView_majorFont_minorFont_displayType_timeScope_context___block_invoke;
    v22[3] = &unk_1E81B9C90;
    v23 = array;
    [viewCopy enumerateVisibleCoordinatesForSeries:primarySeries block:v22];
  }

  v20 = [(HKSelectedRangeFormatter *)self selectedRangeDataWithCoordinateInfo:array majorFont:fontCopy minorFont:minorFontCopy displayType:typeCopy timeScope:scope context:context];

  return v20;
}

void __109__HKSelectedRangeFormatter_selectedRangeDataWithGraphView_majorFont_minorFont_displayType_timeScope_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 userInfo];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 userInfo];
    [v4 addObject:v5];
  }
}

- (id)selectedRangeDataWithCoordinateInfo:(id)info majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context
{
  v14 = MEMORY[0x1E695DF70];
  typeCopy = type;
  minorFontCopy = minorFont;
  fontCopy = font;
  infoCopy = info;
  array = [v14 array];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __114__HKSelectedRangeFormatter_selectedRangeDataWithCoordinateInfo_majorFont_minorFont_displayType_timeScope_context___block_invoke;
  v23[3] = &unk_1E81B9CB8;
  v24 = array;
  v20 = array;
  [infoCopy enumerateObjectsUsingBlock:v23];

  v21 = [(HKSelectedRangeFormatter *)self selectedRangeDataWithChartData:v20 majorFont:fontCopy minorFont:minorFontCopy displayType:typeCopy timeScope:scope context:context];

  return v21;
}

void __114__HKSelectedRangeFormatter_selectedRangeDataWithCoordinateInfo_majorFont_minorFont_displayType_timeScope_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F43A09B0])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)selectedRangeDataWithChartData:(id)data majorFont:(id)font minorFont:(id)minorFont displayType:(id)type timeScope:(int64_t)scope context:(int64_t)context
{
  dataCopy = data;
  fontCopy = font;
  minorFontCopy = minorFont;
  typeCopy = type;
  if (![dataCopy count])
  {
    v25 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

  v18 = [(HKSelectedRangeFormatter *)self _formatterForDisplayType:typeCopy timeScope:scope majorFont:fontCopy minorFont:minorFontCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([typeCopy objectType], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, (isKindOfClass & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
      }

      v25 = [v18 formattedSelectedRangeLabelDataWithChartData:dataCopy context:context];
      goto LABEL_18;
    }

    v26 = v18;
    displayType = [v26 displayType];
    v34 = [(HKSelectedRangeFormatter *)self _statFormatterItemOptionsForTimePeriodDisplayType:displayType timeScope:scope context:context];

    displayTypeIdentifier = [typeCopy displayTypeIdentifier];
    if (scope != 6 || displayTypeIdentifier != 79)
    {
      goto LABEL_15;
    }

    if (context == 1)
    {
      chartRangeProvider = [(HKSelectedRangeFormatter *)self chartRangeProvider];
      v29 = v34;
      v25 = [v26 formattedBoundedSelectedRangeLabelDataWithChartData:dataCopy items:v34 customDataType:6 chartRangeProvider:chartRangeProvider];

      goto LABEL_17;
    }

    if (!context)
    {
      v29 = v34;
      v30 = [v26 formattedSelectedRangeLabelDataWithChartData:dataCopy items:v34 customDataType:6];
    }

    else
    {
LABEL_15:
      v29 = v34;
      v30 = [v26 formattedSelectedRangeLabelDataWithChartData:dataCopy items:v34];
    }

    v25 = v30;
LABEL_17:

    goto LABEL_18;
  }

  v21 = v18;
  [typeCopy objectType];
  v22 = v33 = fontCopy;
  displayType2 = [v21 displayType];
  chartRangeProvider2 = [(HKSelectedRangeFormatter *)self chartRangeProvider];
  [v21 configureFormatterForDisplayType:displayType2 quantityType:v22 chartRangeProvider:chartRangeProvider2 timeScope:scope context:context];

  v25 = [v21 formattedSelectedRangeLabelDataWithChartData:dataCopy context:context];

  fontCopy = v33;
LABEL_18:

LABEL_19:

  return v25;
}

- (id)_formatterForDisplayType:(id)type timeScope:(int64_t)scope majorFont:(id)font minorFont:(id)minorFont
{
  typeCopy = type;
  fontCopy = font;
  minorFontCopy = minorFont;
  v13 = [typeCopy hk_interactiveChartsFormatterForTimeScope:scope];
  [v13 setMajorFont:fontCopy];
  [v13 setMinorFont:minorFontCopy];
  v14 = typeCopy;
  objc_opt_class();
  baseDisplayType = v14;
  if (objc_opt_isKindOfClass())
  {
    baseDisplayType = v14;
    while (1)
    {
      v16 = baseDisplayType;
      baseDisplayType = [v16 baseDisplayType];

      if (!baseDisplayType)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    baseDisplayType = v16;
  }

LABEL_7:
  [v13 setDisplayType:baseDisplayType];
  unitPreferenceController = [(HKSelectedRangeFormatter *)self unitPreferenceController];
  [v13 setUnitController:unitPreferenceController];

  return v13;
}

- (id)_statFormatterItemOptionsForTimePeriodDisplayType:(id)type timeScope:(int64_t)scope context:(int64_t)context
{
  v18[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v10 = typeCopy;
  if (context != 1)
  {
    if (context)
    {
      goto LABEL_18;
    }

    if ([typeCopy displayTypeIdentifier] != 237)
    {
      v11 = scope & 0xFFFFFFFFFFFFFFFELL;
      v12 = &unk_1F4381450;
      v13 = &unk_1F4381438;
      goto LABEL_15;
    }

LABEL_9:
    v5 = [(HKSelectedRangeFormatter *)self _handwashingStatFormatterItemOptionsForTimePeriodTimeScope:scope];
    goto LABEL_18;
  }

  displayTypeIdentifier = [typeCopy displayTypeIdentifier];
  v5 = &unk_1F43814F8;
  if (displayTypeIdentifier > 98)
  {
    if (displayTypeIdentifier == 99)
    {
      if (scope > 6)
      {
        v16 = 8;
      }

      else
      {
        v16 = qword_1C3D5D7A8[scope];
      }

      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
      v18[0] = v17;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

      goto LABEL_18;
    }

    if (displayTypeIdentifier != 189)
    {
      if (displayTypeIdentifier != 237)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

LABEL_14:
    v11 = scope & 0xFFFFFFFFFFFFFFFELL;
    v12 = &unk_1F43814E0;
    v13 = &unk_1F43814C8;
LABEL_15:
    if (v11 == 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = v12;
    }

    goto LABEL_18;
  }

  if (displayTypeIdentifier == 70)
  {
    goto LABEL_14;
  }

  if (displayTypeIdentifier == 79)
  {
    if ((scope - 2) >= 5)
    {
      v5 = &unk_1F43814B0;
    }

    else
    {
      v5 = qword_1E81B9CD8[scope - 2];
    }
  }

LABEL_18:

  return v5;
}

- (id)_handwashingStatFormatterItemOptionsForTimePeriodTimeScope:(int64_t)scope
{
  if ((scope & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return &unk_1F4381510;
  }

  else
  {
    return &unk_1F4381528;
  }
}

@end