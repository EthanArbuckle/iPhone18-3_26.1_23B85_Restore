@interface HKOverlayRoomPillValueProviderCurrentValue
- (HKOverlayRoomPillValueProviderCurrentValue)initWithSelectedRangeFormatter:(id)formatter interfaceLayout:(int64_t)layout;
- (id)_contextStatisticsTypeString:(id)string;
- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller;
@end

@implementation HKOverlayRoomPillValueProviderCurrentValue

- (HKOverlayRoomPillValueProviderCurrentValue)initWithSelectedRangeFormatter:(id)formatter interfaceLayout:(int64_t)layout
{
  formatterCopy = formatter;
  v11.receiver = self;
  v11.super_class = HKOverlayRoomPillValueProviderCurrentValue;
  v8 = [(HKOverlayRoomPillValueProviderCurrentValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_selectedRangeFormatter, formatter);
    v9->_interfaceLayout = layout;
  }

  return v9;
}

- (id)_contextStatisticsTypeString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [stringCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(stringCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        statisticsType = [v8 statisticsType];
        if (statisticsType <= 0x18 && ((1 << statisticsType) & 0x1007108) != 0)
        {
          v11 = v8;

          v5 = v11;
        }
      }

      v4 = [stringCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
    if (v5)
    {
      hk_chartOverlaySectionItemValueAndUnitFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
      hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
      hk_chartLollipopLabelColor2 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
      v4 = [HKSelectedRangeLabel attributedStringForSelectedRangeData:v5 font:hk_chartOverlaySectionItemValueAndUnitFont foregroundColor:hk_chartLollipopLabelColor prefixColor:hk_chartLollipopLabelColor2 prefersImageAffixes:0 embedded:1];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller
{
  v56 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  typeCopy = type;
  controllerCopy = controller;
  if ([pointsCopy count])
  {
    selectedRangeFormatter = [(HKOverlayRoomPillValueProviderCurrentValue *)self selectedRangeFormatter];
    v15 = selectedRangeFormatter;
    v43 = controllerCopy;
    v44 = typeCopy;
    if (selectedRangeFormatter)
    {
      v16 = selectedRangeFormatter;
    }

    else
    {
      v16 = [[HKSelectedRangeFormatter alloc] initWithUnitPreferenceController:controllerCopy];
    }

    v45 = v16;

    array = [MEMORY[0x1E695DF70] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v24 = pointsCopy;
    v25 = [v24 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v51;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v24);
          }

          userInfo = [*(*(&v50 + 1) + 8 * i) userInfo];
          if ([userInfo conformsToProtocol:&unk_1F43A09B0])
          {
            [array addObject:userInfo];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v26);
    }

    hk_chartOverlaySectionItemValueAndUnitFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
    hk_chartOverlaySectionItemValueAndUnitFont2 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
    v21 = v44;
    v32 = [(HKSelectedRangeFormatter *)v45 selectedRangeDataWithChartData:array majorFont:hk_chartOverlaySectionItemValueAndUnitFont minorFont:hk_chartOverlaySectionItemValueAndUnitFont2 displayType:v44 timeScope:scope context:1];

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = [(HKOverlayRoomPillValueProviderCurrentValue *)self _contextStatisticsTypeString:v32];
    if (v34)
    {
      [v33 addObject:v34];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = v32;
    v36 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v47;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v47 != v38)
          {
            objc_enumerationMutation(v35);
          }

          attributedString = [*(*(&v46 + 1) + 8 * j) attributedString];
          [v33 addObject:attributedString];
        }

        v37 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v37);
    }

    v41 = HKUIJoinAttributedStringsForLocaleWithSeparator(v33, @" ");
    v22 = [[HKOverlayPillValue alloc] initWithAttributedValue:v41];

    controllerCopy = v43;
  }

  else
  {
    v17 = [HKOverlayPillValue alloc];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v20 = v17;
    v21 = typeCopy;
    v22 = [(HKOverlayPillValue *)v20 initWithValueString:v19 unitString:&stru_1F42FFBE0];
  }

  return v22;
}

@end