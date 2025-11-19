@interface HKOverlayRoomPillValueProviderCurrentValue
- (HKOverlayRoomPillValueProviderCurrentValue)initWithSelectedRangeFormatter:(id)a3 interfaceLayout:(int64_t)a4;
- (id)_contextStatisticsTypeString:(id)a3;
- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7;
@end

@implementation HKOverlayRoomPillValueProviderCurrentValue

- (HKOverlayRoomPillValueProviderCurrentValue)initWithSelectedRangeFormatter:(id)a3 interfaceLayout:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HKOverlayRoomPillValueProviderCurrentValue;
  v8 = [(HKOverlayRoomPillValueProviderCurrentValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_selectedRangeFormatter, a3);
    v9->_interfaceLayout = a4;
  }

  return v9;
}

- (id)_contextStatisticsTypeString:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 statisticsType];
        if (v9 <= 0x18 && ((1 << v9) & 0x1007108) != 0)
        {
          v11 = v8;

          v5 = v11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
    if (v5)
    {
      v12 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
      v13 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
      v14 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
      v4 = [HKSelectedRangeLabel attributedStringForSelectedRangeData:v5 font:v12 foregroundColor:v13 prefixColor:v14 prefersImageAffixes:0 embedded:1];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  if ([v11 count])
  {
    v14 = [(HKOverlayRoomPillValueProviderCurrentValue *)self selectedRangeFormatter];
    v15 = v14;
    v43 = v13;
    v44 = v12;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [[HKSelectedRangeFormatter alloc] initWithUnitPreferenceController:v13];
    }

    v45 = v16;

    v23 = [MEMORY[0x1E695DF70] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v24 = v11;
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

          v29 = [*(*(&v50 + 1) + 8 * i) userInfo];
          if ([v29 conformsToProtocol:&unk_1F43A09B0])
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v26);
    }

    v30 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
    v31 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
    v21 = v44;
    v32 = [(HKSelectedRangeFormatter *)v45 selectedRangeDataWithChartData:v23 majorFont:v30 minorFont:v31 displayType:v44 timeScope:a6 context:1];

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

          v40 = [*(*(&v46 + 1) + 8 * j) attributedString];
          [v33 addObject:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v37);
    }

    v41 = HKUIJoinAttributedStringsForLocaleWithSeparator(v33, @" ");
    v22 = [[HKOverlayPillValue alloc] initWithAttributedValue:v41];

    v13 = v43;
  }

  else
  {
    v17 = [HKOverlayPillValue alloc];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v20 = v17;
    v21 = v12;
    v22 = [(HKOverlayPillValue *)v20 initWithValueString:v19 unitString:&stru_1F42FFBE0];
  }

  return v22;
}

@end