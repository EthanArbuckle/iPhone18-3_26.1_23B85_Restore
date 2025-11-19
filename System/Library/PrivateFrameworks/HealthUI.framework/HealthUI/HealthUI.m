HKDisplayType *HKDisplayTypeIdentifierBodyMassIndexMake()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:2.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v23) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v10 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Heart urlAttribute:Lung primaryProfileOnly:and Blood Institute", 0, 0];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v24) = 0;
  v13 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v10];

  v14 = [HKDisplayTypeLocalization alloc];
  v15 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v25 = &unk_1F4384048;
  v26 = @"BMI";
  v27 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v18 = [(HKDisplayTypeLocalization *)v14 initWithDisplayNameKey:@"BODY_MASS_INDEX" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v17];

  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:0];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:0 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v9 presentation:v13 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierBodyMassMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v30 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:2];
  v1 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v31 = v1;
  v2 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  v32[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [(HKDisplayTypeChartingRules *)v30 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:v3];

  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:20.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:0.0];
  v13 = MEMORY[0x1E696C348];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v15 = [v13 quantityWithUnit:v14 doubleValue:150.0];
  v16 = [HKValueRange valueRangeWithMinValue:v12 maxValue:v15];
  v17 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v6 minimumValue:v9 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v16];
  [(HKDisplayTypeChartingRules *)v30 setAxisScalingRule:v17];

  LODWORD(v28) = 65537;
  v18 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v28 canBecomeFavorite:? hidden:?];
  v19 = [HKDisplayTypePresentation alloc];
  v20 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v29) = 0;
  v21 = MEMORY[0x1E695E0F8];
  v22 = [(HKDisplayTypePresentation *)v19 initWithDefaultConfiguration:v20 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v29 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v23 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BODY_MASS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v21];
  v24 = [HKDisplayType alloc];
  v25 = [MEMORY[0x1E696C2E0] dataTypeWithCode:3];
  v26 = [(HKDisplayType *)v24 initWithDisplayTypeIdentifier:3 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v25 behavior:v18 presentation:v22 localization:v23 chartingRules:v30 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v26;
}

HKDisplayType *HKDisplayTypeIdentifierLeanBodyMassMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:2];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v25 = v2;
  v3 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  v26[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:v4];

  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:8.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"lb"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:0.0];
  v11 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v7 minimumValue:v10 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v11];

  LODWORD(v23) = 65537;
  v12 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v13 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v14 = [HKDisplayTypePresentation alloc];
  v15 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v24) = 0;
  v16 = MEMORY[0x1E695E0F8];
  v17 = [(HKDisplayTypePresentation *)v14 initWithDefaultConfiguration:v15 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v13, v25];

  v18 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"LEAN_BODY_MASS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:4];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:4 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v12 presentation:v17 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

uint64_t Collection<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v17 = sub_1C3D1FED4();
  (*(v7 + 16))(v9, v3, a1);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = &v17;
  v10 = sub_1C3D20234();

  return v10;
}

uint64_t sub_1C3947E34(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_1C3D203E4();
  v9 = sub_1C3D203D4();
  (*(v3 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

HKDisplayType *HKDisplayTypeIdentifierBodyFatPercentageMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:4.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v19) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v19 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v20) = 0;
  v12 = MEMORY[0x1E695E0F8];
  v13 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v20 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BODY_FAT_PERCENTAGE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v12];
  v15 = [HKDisplayType alloc];
  v16 = [MEMORY[0x1E696C2E0] dataTypeWithCode:1];
  v17 = [(HKDisplayType *)v15 initWithDisplayTypeIdentifier:1 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v16 behavior:v9 presentation:v13 localization:v14 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v17;
}

HKDisplayType *HKDisplayTypeIdentifierBasalEnergyBurnedMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:50.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"BASAL_ENERGY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:9];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:9 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierFlightsClimbedMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:3.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v25) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v31 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v32[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  LOBYTE(v26) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v27 = &unk_1F4384048;
  v28 = @"FLOORS_LOWER";
  v29 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v20 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"FLIGHTS_CLIMBED" labelDisplayNameKey:@"FLOORS" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v19];

  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:12];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:12 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v10 presentation:v15 localization:v20 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierOxygenSaturationMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:3 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:10.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:100.0];
  v11 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:v10 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v11];

  LODWORD(v23) = 65537;
  v12 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v13 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v14 = [HKDisplayTypePresentation alloc];
  v15 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v24) = 0;
  v16 = MEMORY[0x1E695E0F8];
  v17 = [(HKDisplayTypePresentation *)v14 initWithDefaultConfiguration:v15 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v13];

  v18 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"OXYGEN_SATURATION" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:14];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:14 categoryIdentifier:13 secondaryCategoryIdentifiers:&unk_1F4381558 objectType:v20 behavior:v12 presentation:v17 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierBloodGlucoseMake()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:0 preferredTimeScope:6];
  v1 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
  v34 = v1;
  v2 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  v35[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:0 perUnitPrecisionRules:v3];

  v31 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v31 setMinute:30];
  [(HKDisplayTypeChartingRules *)v0 setIntervalComponents:v31 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setChartPointRadius:6 forTimeScope:2.0];
  [(HKDisplayTypeChartingRules *)v0 setChartPointLineWidth:6 forTimeScope:1.0];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:1 forTimeScope:6];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:200.0];
  v10 = [HKValueRange valueRangeWithMinValue:v6 maxValue:v9];
  v11 = MEMORY[0x1E696C348];
  v12 = [MEMORY[0x1E696C510] unitFromString:@"mg/dL"];
  v13 = [v11 quantityWithUnit:v12 doubleValue:0.0];
  v14 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v10 axisBoundsOverrides:0 minimumValue:v13 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v14];

  v15 = [HKRemoteChartConfiguration alloc];
  v32 = &unk_1F4384060;
  v16 = [MEMORY[0x1E695DF10] hk_chartStatisticsIntervalComponentsForValue:2 forComponent:32];
  v33 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v18 = [(HKRemoteChartConfiguration *)v15 initWithStatisticIntervalComponentsByTimeScope:v17];
  [(HKDisplayTypeChartingRules *)v0 setRemoteChartConfiguration:v18];

  LODWORD(v29) = 65537;
  v19 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:1 appearsInDataTypeSearch:0 supportsAssociatedSamples:v29 canBecomeFavorite:? hidden:?];
  v20 = [HKDisplayTypePresentation alloc];
  v21 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v30) = 0;
  v22 = MEMORY[0x1E695E0F8];
  v23 = [(HKDisplayTypePresentation *)v20 initWithDefaultConfiguration:v21 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:1 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v30 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v24 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BLOOD_GLUCOSE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v22];
  v25 = [HKDisplayType alloc];
  v26 = [MEMORY[0x1E696C2E0] dataTypeWithCode:15];
  v27 = [(HKDisplayType *)v25 initWithDisplayTypeIdentifier:15 categoryIdentifier:1 secondaryCategoryIdentifiers:&unk_1F4381570 objectType:v26 behavior:v19 presentation:v23 localization:v24 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v27;
}

HKDisplayType *HKDisplayTypeIdentifierHeightMake()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [MEMORY[0x1E696C510] unitFromString:@"ft"];
  v23 = v1;
  v2 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  v24[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:0 perUnitPrecisionRules:v3];

  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:5.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v6 minimumValue:v9 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v10];

  LODWORD(v21) = 65537;
  v11 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v21 canBecomeFavorite:? hidden:?];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v22) = 0;
  v14 = MEMORY[0x1E695E0F8];
  v15 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v22 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v23];

  v16 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"HEIGHT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v14];
  v17 = [HKDisplayType alloc];
  v18 = [MEMORY[0x1E696C2E0] dataTypeWithCode:2];
  v19 = [(HKDisplayType *)v17 initWithDisplayTypeIdentifier:2 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v18 behavior:v11 presentation:v15 localization:v16 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v19;
}

HKDisplayType *HKDisplayTypeIdentifierHeartRateMake()
{
  v41[1] = *MEMORY[0x1E69E9840];
  v34 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:2 preferredTimeScope:6];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v34 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v35 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v2 = [v1 quantityWithUnit:v35 doubleValue:20.0];
  v3 = MEMORY[0x1E696C348];
  v4 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v5 = [v3 quantityWithUnit:v4 doubleValue:0.0];
  v6 = MEMORY[0x1E696C348];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v8 = [v6 quantityWithUnit:v7 doubleValue:0.0];
  v9 = MEMORY[0x1E696C348];
  v10 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v11 = [v9 quantityWithUnit:v10 doubleValue:80.0];
  v12 = [HKValueRange valueRangeWithMinValue:v8 maxValue:v11];
  v13 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v2 minimumValue:v5 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v12];
  [(HKDisplayTypeChartingRules *)v34 setAxisScalingRule:v13];

  v14 = [HKRemoteChartConfiguration alloc];
  v40 = &unk_1F4384060;
  v15 = [MEMORY[0x1E695DF10] hk_chartStatisticsIntervalComponentsForValue:2 forComponent:32];
  v41[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v17 = [(HKRemoteChartConfiguration *)v14 initWithStatisticIntervalComponentsByTimeScope:v16];
  [(HKDisplayTypeChartingRules *)v34 setRemoteChartConfiguration:v17];

  LODWORD(v32) = 65537;
  v18 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v32 canBecomeFavorite:? hidden:?];
  v19 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v20 = [HKDisplayTypePresentation alloc];
  v21 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v33) = 0;
  v22 = [(HKDisplayTypePresentation *)v20 initWithDefaultConfiguration:v21 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v33 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v19];

  v23 = [HKDisplayTypeLocalization alloc];
  v24 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v36 = &unk_1F4384048;
  v37 = @"BEATS_PER_MINUTE";
  v38 = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v39 = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v27 = [(HKDisplayTypeLocalization *)v23 initWithDisplayNameKey:@"HEART_RATE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v26];

  v28 = [HKDisplayType alloc];
  v29 = [MEMORY[0x1E696C2E0] dataTypeWithCode:5];
  v30 = [(HKDisplayType *)v28 initWithDisplayTypeIdentifier:5 categoryIdentifier:11 secondaryCategoryIdentifiers:&unk_1F4381540 objectType:v29 behavior:v18 presentation:v22 localization:v27 chartingRules:v34 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v30;
}

HKDisplayType *HKDisplayTypeIdentifierStepsMake()
{
  v33[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:100.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v26) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v26 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v32 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v33[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  LOBYTE(v27) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v27 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v28 = &unk_1F4384048;
  v29 = @"STEPS_LOWER";
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v31 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v21 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"STEPS" labelDisplayNameKey:@"STEPS" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v20];

  v22 = [HKDisplayType alloc];
  v23 = [MEMORY[0x1E696C2E0] dataTypeWithCode:7];
  v24 = [(HKDisplayType *)v22 initWithDisplayTypeIdentifier:7 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v23 behavior:v10 presentation:v16 localization:v21 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v24;
}

HKDisplayType *HKDisplayTypeIdentifierDistanceWalkingRunningMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.1];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:8];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:8 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierActiveEnergyMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:50.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"ACTIVE_ENERGY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:10];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:10 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierNikeFuelMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:100.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v25) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v31 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v32[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  LOBYTE(v26) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:@"NikeFuel_Summary_Image" listIconImageNameOverride:0 summaryAttribution:0];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v27 = &unk_1F4384048;
  v28 = &stru_1F42FFBE0;
  v29 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v20 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"NIKE_FUEL" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v19];

  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:13];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:13 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v10 presentation:v15 localization:v20 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierBloodAlcoholContentMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:3 chartingOptions:16 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:3];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.1];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v21) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v21 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v22) = 0;
  v14 = MEMORY[0x1E695E0F8];
  v15 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v22 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11];

  v16 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BLOOD_ALCOHOL_CONTENT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v14];
  v17 = [HKDisplayType alloc];
  v18 = [MEMORY[0x1E696C2E0] dataTypeWithCode:18];
  v19 = [(HKDisplayType *)v17 initWithDisplayTypeIdentifier:18 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v18 behavior:v10 presentation:v15 localization:v16 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v19;
}

HKDisplayType *HKDisplayTypeIdentifierPeripheralPerfusionIndexMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.2];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v7];

  LODWORD(v18) = 65537;
  v8 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v9 = [HKDisplayTypePresentation alloc];
  v10 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v19) = 0;
  v11 = MEMORY[0x1E695E0F8];
  v12 = [(HKDisplayTypePresentation *)v9 initWithDefaultConfiguration:v10 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"PERFUSION_INDEX" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v11];
  v14 = [HKDisplayType alloc];
  v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:19];
  v16 = [(HKDisplayType *)v14 initWithDisplayTypeIdentifier:19 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v15 behavior:v8 presentation:v12 localization:v13 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryFatTotalMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"TOTAL_FAT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:20];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:20 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryFatPolyunsaturatedMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"POLYUNSATURATED_FAT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:21];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:21 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryFatMonounsaturatedMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"MONOUNSATURATED_FAT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:22];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:22 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryCholesterolMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:5.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"CHOLESTEROL" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:24];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:24 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietarySodiumMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"SODIUM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:25];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:25 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryCarbohydratesMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"CARBOHYDRATES" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:26];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:26 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietarySugarMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"SUGAR" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:28];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:28 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryFatSaturatedMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"SATURATED_FAT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:23];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:23 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryFiberMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"FIBER" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:27];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:27 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryEnergyMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"kcal"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:50.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"DIETARY_ENERGY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:29];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:29 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryProteinMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"g"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"PROTEIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:30];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:30 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryVitaminDMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.5];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"NIH MedlinePlus" urlAttribute:0 primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"VITAMIN_D" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:35];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:35 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryIronMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"IRON" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:39];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:39 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryRiboflavinMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.2];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"RIBOFLAVIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:41];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:41 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryBiotinMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"BIOTIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:44];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:44 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryPantothenicAcidMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.1];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"PANTOTHENIC_ACID" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:45];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:45 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryPhosphorusMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Institute of Diabetes and Digestive and Kidney Disorders" urlAttribute:0 primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"PHOSPHORUS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:46];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:46 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryIodineMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:5.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Institutes of Health urlAttribute:Office of Dietary Supplements" primaryProfileOnly:0, 0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"IODINE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:47];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:47 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryMagnesiumMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:5.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"MAGNESIUM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:48];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:48 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryZincMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"ZINC" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:49];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:49 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietarySeleniumMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Institutes of Health urlAttribute:Office of Dietary Supplements" primaryProfileOnly:0, 0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"SELENIUM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:50];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:50 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryCopperMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"COPPER" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:51];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:51 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryManganeseMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.1];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"MANGANESE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:52];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:52 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryChlorideMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:50.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"CHLORIDE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:55];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:55 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierNumberOfTimesFallenMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:3.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v25) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v31 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v32[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  LOBYTE(v26) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v27 = &unk_1F4384048;
  v28 = &stru_1F42FFBE0;
  v29 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v20 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"NUMBER_OF_TIMES_FALLEN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v19];

  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:57];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:57 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v10 presentation:v15 localization:v20 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierElectrodermalActivityMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"mcS"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.2];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"mcS"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v7];

  LODWORD(v18) = 65537;
  v8 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v9 = [HKDisplayTypePresentation alloc];
  v10 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v19) = 0;
  v11 = MEMORY[0x1E695E0F8];
  v12 = [(HKDisplayTypePresentation *)v9 initWithDefaultConfiguration:v10 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ELECTRODERMAL_ACTIVITY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v11];
  v14 = [HKDisplayType alloc];
  v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:58];
  v16 = [(HKDisplayType *)v14 initWithDisplayTypeIdentifier:58 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v15 behavior:v8 presentation:v12 localization:v13 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierBodyTemperatureMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"degF"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:97.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"degF"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:100.0];
  v7 = [HKValueRange valueRangeWithMinValue:v3 maxValue:v6];
  v8 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v7 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v20) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v20 canBecomeFavorite:? hidden:?];
  v10 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v21) = 0;
  v13 = MEMORY[0x1E695E0F8];
  v14 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v21 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v10];

  v15 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BODY_TEMPERATURE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v13];
  v16 = [HKDisplayType alloc];
  v17 = [MEMORY[0x1E696C2E0] dataTypeWithCode:62];
  v18 = [(HKDisplayType *)v16 initWithDisplayTypeIdentifier:62 categoryIdentifier:1 secondaryCategoryIdentifiers:&unk_1F43815B8 objectType:v17 behavior:v9 presentation:v14 localization:v15 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v18;
}

HKDisplayType *HKDisplayTypeIdentifierDateOfBirthMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"DATE_OF_BIRTH" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:65];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:65 categoryIdentifier:7 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierBloodTypeMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BLOOD_TYPE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:66];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:66 categoryIdentifier:7 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierForcedVitalCapacityMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"L"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.2];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"L"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v7];

  LODWORD(v18) = 65537;
  v8 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v9 = [HKDisplayTypePresentation alloc];
  v10 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v19) = 0;
  v11 = MEMORY[0x1E695E0F8];
  v12 = [(HKDisplayTypePresentation *)v9 initWithDefaultConfiguration:v10 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SPIROMETRY_FVC" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v11];
  v14 = [HKDisplayType alloc];
  v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:71];
  v16 = [(HKDisplayType *)v14 initWithDisplayTypeIdentifier:71 categoryIdentifier:13 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v15 behavior:v8 presentation:v12 localization:v13 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierAppleExerciseTimeMake()
{
  v42[1] = *MEMORY[0x1E69E9840];
  v38 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v38 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v37 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v35 = [v1 quantityWithUnit:v37 doubleValue:0.0];
  v2 = MEMORY[0x1E696C348];
  v36 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v34 = [v2 quantityWithUnit:v36 doubleValue:25.0];
  v30 = [HKValueRange valueRangeWithMinValue:v35 maxValue:v34];
  v41 = &unk_1F4384060;
  v3 = MEMORY[0x1E696C348];
  v33 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v31 = [v3 quantityWithUnit:v33 doubleValue:0.0];
  v4 = MEMORY[0x1E696C348];
  v32 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v5 = [v4 quantityWithUnit:v32 doubleValue:8.0];
  v6 = [HKValueRange valueRangeWithMinValue:v31 maxValue:v5];
  v42[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:0.0];
  v11 = MEMORY[0x1E696C348];
  v12 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v13 = [v11 quantityWithUnit:v12 doubleValue:30.0];
  v14 = [HKValueRange valueRangeWithMinValue:v10 maxValue:v13];
  v15 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v30 axisBoundsOverrides:v7 minimumValue:0 maximumValue:0 noDataAxisBounds:v14];
  [(HKDisplayTypeChartingRules *)v38 setAxisScalingRule:v15];

  LODWORD(v28) = 65537;
  v16 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v28 canBecomeFavorite:? hidden:?];
  v17 = [HKDisplayTypePresentation alloc];
  v18 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v39 = &unk_1F4384060;
  v19 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v40 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  LOBYTE(v29) = 0;
  v21 = [(HKDisplayTypePresentation *)v17 initWithDefaultConfiguration:v18 configurationOverrides:v20 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v29 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v22 = [HKDisplayTypeLocalization alloc];
  v23 = [(HKDisplayTypeLocalization *)v22 initWithDisplayNameKey:@"EXERCISE_MINUTE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v24 = [HKDisplayType alloc];
  v25 = [MEMORY[0x1E696C2E0] dataTypeWithCode:75];
  v26 = [(HKDisplayType *)v24 initWithDisplayTypeIdentifier:75 categoryIdentifier:2 secondaryCategoryIdentifiers:&unk_1F43815E8 objectType:v25 behavior:v16 presentation:v21 localization:v23 chartingRules:v38 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v26;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryWaterMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mL"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mL"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"WATER" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:87];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:87 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierOvulationTestResultMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:10 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:3 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"OVULATION_TEST_RESULT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:92];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:92 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierMenstruationMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:10 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:6 secondaryValue:3 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MENSTRUATION" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:95];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:95 categoryIdentifier:8 secondaryCategoryIdentifiers:&unk_1F4381630 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierIntermenstrualBleedingMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:7 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v12) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v12 canBecomeFavorite:? hidden:?];
  v2 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:6 secondaryValue:3 detailChart:9 singleDailyValue:0];
  LOBYTE(v13) = 0;
  v5 = MEMORY[0x1E695E0F8];
  v6 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v13 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v2];

  v7 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"INTERMENSTRUAL_BLEEDING" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v5];
  v8 = [HKDisplayType alloc];
  v9 = [MEMORY[0x1E696C2E0] dataTypeWithCode:96];
  v10 = [(HKDisplayType *)v8 initWithDisplayTypeIdentifier:96 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v9 behavior:v1 presentation:v6 localization:v7 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v10;
}

HKDisplayType *HKDisplayTypeIdentifierSexualActivityMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A10 maxValue:&unk_1F4384A30];
  v3 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v2 axisBoundsOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v3];

  LODWORD(v14) = 65537;
  v4 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v14 canBecomeFavorite:? hidden:?];
  v5 = [HKDisplayTypePresentation alloc];
  v6 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:6 secondaryValue:3 detailChart:5 singleDailyValue:0];
  LOBYTE(v15) = 0;
  v7 = MEMORY[0x1E695E0F8];
  v8 = [(HKDisplayTypePresentation *)v5 initWithDefaultConfiguration:v6 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v15 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v9 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SEXUAL_ACTIVITY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v7];
  v10 = [HKDisplayType alloc];
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:97];
  v12 = [(HKDisplayType *)v10 initWithDisplayTypeIdentifier:97 categoryIdentifier:8 secondaryCategoryIdentifiers:&unk_1F4381648 objectType:v11 behavior:v4 presentation:v8 localization:v9 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v12;
}

HKDisplayType *HKDisplayTypeIdentifierMindfulSessionMake()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  [(HKDisplayTypeChartingRules *)v0 setChartStyle:5 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:1 forTimeScope:6];
  v2 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A10 maxValue:&unk_1F4384A40];
  v3 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A10 maxValue:&unk_1F4384A40];
  v4 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v2 axisBoundsOverrides:0 noDataAxisBounds:v3];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v4];

  LODWORD(v17) = 65537;
  v5 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v17 canBecomeFavorite:? hidden:?];
  v6 = [HKDisplayTypePresentation alloc];
  v7 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:3 secondaryValue:2 detailChart:7 singleDailyValue:0];
  v19 = &unk_1F4384060;
  v8 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:3 secondaryValue:0 detailChart:8 singleDailyValue:0];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  LOBYTE(v18) = 0;
  v10 = [(HKDisplayTypePresentation *)v6 initWithDefaultConfiguration:v7 configurationOverrides:v9 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v18 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v19];

  v11 = [HKDisplayTypeLocalization alloc];
  v12 = [(HKDisplayTypeLocalization *)v11 initWithDisplayNameKey:@"MINDFUL_MINUTES" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v13 = [HKDisplayType alloc];
  v14 = [MEMORY[0x1E696C2E0] dataTypeWithCode:99];
  v15 = [(HKDisplayType *)v13 initWithDisplayTypeIdentifier:99 categoryIdentifier:10 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v14 behavior:v5 presentation:v10 localization:v12 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v15;
}

HKDisplayType *HKDisplayTypeIdentifierPushCountMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1000.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v25) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v31 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v32[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  LOBYTE(v26) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v27 = &unk_1F4384048;
  v28 = @"PUSH_COUNT_LOWER";
  v29 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v20 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"PUSH_COUNT" labelDisplayNameKey:@"PUSH_COUNT" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v19];

  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:101];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:101 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v10 presentation:v15 localization:v20 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierWheelchairUseMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WHEELCHAIR_USE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:103];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:103 categoryIdentifier:7 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierCDADocumentMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 1;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CLINICAL_DOCUMENTS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:107];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:107 categoryIdentifier:9 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierInsulinDeliveryMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:3];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"IU"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"IU"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v25) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:1 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v31 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v32[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  LOBYTE(v26) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"IU"];
  v27 = &unk_1F4384048;
  v28 = @"INSULIN";
  v29 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v20 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"INSULIN_DELIVERY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v19];

  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:125];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:125 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v10 presentation:v15 localization:v20 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierWalkingHeartRateAverageMake()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:1 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:0 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:1 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:0 forTimeScope:7];
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:20.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v22) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:1];
  LOBYTE(v23) = 0;
  v12 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [HKDisplayTypeLocalization alloc];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v24 = &unk_1F4384048;
  v25 = @"BEATS_PER_MINUTE";
  v26 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = [(HKDisplayTypeLocalization *)v13 initWithDisplayNameKey:@"WALKING_HEART_RATE_AVERAGE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];

  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:137];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:137 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v9 presentation:v12 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDownhillSnowSportsDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"DOWNHILL_SNOW_SPORTS_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:138];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:138 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierHeartRateVariabilitySDNNMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"ms"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:150.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"ms"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v19) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v19 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v20) = 0;
  v12 = MEMORY[0x1E695E0F8];
  v13 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v20 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"HEART_RATE_VARIABILITY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v12];
  v15 = [HKDisplayType alloc];
  v16 = [MEMORY[0x1E696C2E0] dataTypeWithCode:139];
  v17 = [(HKDisplayType *)v15 initWithDisplayTypeIdentifier:139 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v16 behavior:v9 presentation:v13 localization:v14 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v17;
}

HKDisplayType *HKDisplayTypeIdentifierBradycardiaEventMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v17) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v17 canBecomeFavorite:? hidden:?];
  v2 = [MEMORY[0x1E696C608] sharedBehavior];
  v3 = [v2 isiPad];

  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v5 = [HKDisplayTypeSummaryAttribution alloc];
    v6 = HKHealthKitFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"HEART_EVENT_SUMMARY_ATTRIBUTION" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
    v4 = [(HKDisplayTypeSummaryAttribution *)v5 initWithAttribution:v7 urlAttribute:@"bridge:root=NOTIFICATIONS_ID&path=com.apple.HeartRateSettings" primaryProfileOnly:0];
  }

  v8 = [HKDisplayTypePresentation alloc];
  v9 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:7 singleDailyValue:0];
  LOBYTE(v18) = 0;
  v10 = MEMORY[0x1E695E0F8];
  v11 = [(HKDisplayTypePresentation *)v8 initWithDefaultConfiguration:v9 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v18 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v4];

  v12 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BRADYCARDIA" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v10];
  v13 = [HKDisplayType alloc];
  v14 = [MEMORY[0x1E696C2E0] dataTypeWithCode:147];
  v15 = [(HKDisplayType *)v13 initWithDisplayTypeIdentifier:147 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v14 behavior:v1 presentation:v11 localization:v12 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v15;
}

HKDisplayType *HKDisplayTypeIdentifierConditionRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_conditions" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CONDITION_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:150];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:150 categoryIdentifier:18 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryVitaminB6Make()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.2];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"VITAMIN_B6" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:32];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:32 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryVitaminB12Make()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.2];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Institutes of Health urlAttribute:Office of Dietary Supplements" primaryProfileOnly:0, 0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"VITAMIN_B12" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:33];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:33 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryVitaminEMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.5];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"VITAMIN_E" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:36];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:36 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryThiaminMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.2];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"THIAMIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:40];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:40 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryNiacinMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Cancer Institute" urlAttribute:0 primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"NIACIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:42];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:42 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryFolateMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:5.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Institutes of Health urlAttribute:Office of Dietary Supplements" primaryProfileOnly:0, 0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"FOLATE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:43];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:43 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryChromiumMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:5.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"CHROMIUM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:53];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:53 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryMolybdenumMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:2.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"MOLYBDENUM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:54];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:54 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryPotassiumMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"POTASSIUM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:56];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:56 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierRespiratoryRateMake()
{
  v52[1] = *MEMORY[0x1E69E9840];
  v48 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:2 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  [(HKDisplayTypeChartingRules *)v48 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v46 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v44 = [v1 quantityWithUnit:v46 doubleValue:0.0];
  v2 = MEMORY[0x1E696C348];
  v45 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v43 = [v2 quantityWithUnit:v45 doubleValue:20.0];
  v3 = [HKValueRange valueRangeWithMinValue:v44 maxValue:v43];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:40.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v3 axisBoundsOverrides:0 minimumValue:v6 maximumValue:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v48 setAxisScalingRule:v14];

  v15 = MEMORY[0x1E696C348];
  v47 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v16 = [v15 quantityWithUnit:v47 doubleValue:10.0];
  v17 = MEMORY[0x1E696C348];
  v18 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v19 = [v17 quantityWithUnit:v18 doubleValue:0.0];
  v20 = MEMORY[0x1E696C348];
  v21 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v22 = [v20 quantityWithUnit:v21 doubleValue:0.0];
  v23 = MEMORY[0x1E696C348];
  v24 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v25 = [v23 quantityWithUnit:v24 doubleValue:40.0];
  v26 = [HKValueRange valueRangeWithMinValue:v22 maxValue:v25];
  v27 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v16 minimumValue:v19 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v26];
  [(HKDisplayTypeChartingRules *)v48 setCompactChartAxisScalingRule:v27];

  LODWORD(v41) = 65537;
  v28 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v41 canBecomeFavorite:? hidden:?];
  v29 = [HKDisplayTypePresentation alloc];
  v30 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v42) = 0;
  v31 = [(HKDisplayTypePresentation *)v29 initWithDefaultConfiguration:v30 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v42 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v32 = [HKDisplayTypeLocalization alloc];
  v33 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v49[0] = &unk_1F4384048;
  v49[1] = &unk_1F4384090;
  v50[0] = @"BREATHS_PER_MINUTE";
  v50[1] = @"BREATHS_PER_MINUTE_PREFERENCES";
  v51 = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v52[0] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v36 = [(HKDisplayTypeLocalization *)v32 initWithDisplayNameKey:@"RESPIRATORY_RATE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v35];

  v37 = [HKDisplayType alloc];
  v38 = [MEMORY[0x1E696C2E0] dataTypeWithCode:61];
  v39 = [(HKDisplayType *)v37 initWithDisplayTypeIdentifier:61 categoryIdentifier:13 secondaryCategoryIdentifiers:&unk_1F43815A0 objectType:v38 behavior:v28 presentation:v31 localization:v36 chartingRules:v48 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v39;
}

HKDisplayType *HKDisplayTypeIdentifierSleepAnalysisMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:6];
  LODWORD(v16) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:1 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v16 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v17) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:1 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v17 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SLEEP_ANALYSIS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:63];
  v9 = MEMORY[0x1E696C378];
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = _HKCategoryValueSleepAnalysisAsleepValues();
  v12 = [v10 initWithArray:v11];
  v13 = [v9 predicateForCategorySamplesEqualToValues:v12];
  v14 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:63 categoryIdentifier:5 secondaryCategoryIdentifiers:&unk_1F43815D0 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:v13 chartingPredicatesByTimeScope:0];

  return v14;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryCaffeineMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:5.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"CAFFEINE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:78];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:78 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierWorkoutMake()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  [(HKDisplayTypeChartingRules *)v0 setChartStyle:5 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:1 forTimeScope:6];
  v1 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A10 maxValue:&unk_1F4384A20];
  v2 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v1 axisBoundsOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v2];

  LODWORD(v15) = 65793;
  v3 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v15 canBecomeFavorite:? hidden:?];
  v4 = [HKDisplayTypePresentation alloc];
  v5 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:3 secondaryValue:2 detailChart:7 singleDailyValue:0];
  v17 = &unk_1F4384060;
  v6 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:3 secondaryValue:0 detailChart:6 singleDailyValue:0];
  v18[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  LOBYTE(v16) = 0;
  v8 = [(HKDisplayTypePresentation *)v4 initWithDefaultConfiguration:v5 configurationOverrides:v7 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v16 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v17];

  v9 = [HKDisplayTypeLocalization alloc];
  v10 = [(HKDisplayTypeLocalization *)v9 initWithDisplayNameKey:@"WORKOUT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v11 = [HKDisplayType alloc];
  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:79];
  v13 = [(HKDisplayType *)v11 initWithDisplayTypeIdentifier:79 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v12 behavior:v3 presentation:v8 localization:v10 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v13;
}

HKDisplayType *HKDisplayTypeIdentifierBloodPressureMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:3 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mmHg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:60.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mmHg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:160.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v21) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v21 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Heart urlAttribute:Lung primaryProfileOnly:and Blood Institute", 0, 0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:10 singleDailyValue:0];
  LOBYTE(v22) = 0;
  v14 = MEMORY[0x1E695E0F8];
  v15 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v22 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11];

  v16 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BLOOD_PRESSURE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v14];
  v17 = [HKDisplayType alloc];
  v18 = [MEMORY[0x1E696C2E0] dataTypeWithCode:80];
  v19 = [(HKDisplayType *)v17 initWithDisplayTypeIdentifier:80 categoryIdentifier:11 secondaryCategoryIdentifiers:&unk_1F4381600 objectType:v18 behavior:v10 presentation:v15 localization:v16 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v19;
}

HKDisplayType *HKDisplayTypeIdentifierCyclingDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"CYCLING_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:83];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:83 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierFitzpatrickSkinTypeMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v12) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v12 canBecomeFavorite:? hidden:?];
  v2 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v13) = 0;
  v5 = MEMORY[0x1E695E0F8];
  v6 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v13 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v2];

  v7 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"FITZPATRICK_SKIN_TYPE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v5];
  v8 = [HKDisplayType alloc];
  v9 = [MEMORY[0x1E696C2E0] dataTypeWithCode:88];
  v10 = [(HKDisplayType *)v8 initWithDisplayTypeIdentifier:88 categoryIdentifier:7 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v9 behavior:v1 presentation:v6 localization:v7 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v10;
}

HKDisplayType *HKDisplayTypeIdentifierUVExposureMake()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:3 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:15.0];
  v7 = [HKValueRange valueRangeWithMinValue:v3 maxValue:v6];
  v8 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v7 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v23) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v10 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"NIH MedlinePlus" urlAttribute:0 primaryProfileOnly:0];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v24) = 0;
  v13 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v10];

  v14 = [HKDisplayTypeLocalization alloc];
  v15 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v25 = &unk_1F4384048;
  v26 = &stru_1F42FFBE0;
  v27 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v18 = [(HKDisplayTypeLocalization *)v14 initWithDisplayNameKey:@"UV_EXPOSURE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v17];

  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:89];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:89 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v9 presentation:v13 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierBasalBodyTemperatureMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  [(HKDisplayTypeChartingRules *)v0 setChartStyle:3 forTimeScope:2];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"degF"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:97.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"degF"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:100.0];
  v7 = [HKValueRange valueRangeWithMinValue:v3 maxValue:v6];
  v8 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v7 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v22) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v10 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"NIH MedlinePlus" urlAttribute:0 primaryProfileOnly:0];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  v24 = &unk_1F4384090;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v10, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"BASAL_BODY_TEMPERATURE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:90];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:90 categoryIdentifier:8 secondaryCategoryIdentifiers:&unk_1F4381618 objectType:v19 behavior:v9 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierCervicalMucusQualityMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:10 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CERVICAL_MUCUS_QUALITY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:91];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:91 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierActivitySummaryMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:7 chartingOptions:0 preferredTimeScope:6];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:0 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:11 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ACTIVITY_SUMMARY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:100];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:100 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierSwimmingDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:100.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"SWIMMING_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:110];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:110 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierSwimmingStrokesMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:100.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v25) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v31 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v32[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  LOBYTE(v26) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v27 = &unk_1F4384048;
  v28 = @"SWIMMING_STROKES_LOWER";
  v29 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v20 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"SWIMMING_STROKES" labelDisplayNameKey:@"SWIMMING_STROKES" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v19];

  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:111];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:111 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v10 presentation:v15 localization:v20 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierWheelchairDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.1];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"WHEELCHAIR_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:113];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:113 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierWaistCircumferenceMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:5.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v7];

  LODWORD(v18) = 65537;
  v8 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v9 = [HKDisplayTypePresentation alloc];
  v10 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v19) = 0;
  v11 = MEMORY[0x1E695E0F8];
  v12 = [(HKDisplayTypePresentation *)v9 initWithDefaultConfiguration:v10 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WAIST_CIRCUMFERENCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v11];
  v14 = [HKDisplayType alloc];
  v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:114];
  v16 = [(HKDisplayType *)v14 initWithDisplayTypeIdentifier:114 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v15 behavior:v8 presentation:v12 localization:v13 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierRestingHeartRateMake()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:1 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:0 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:1 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:7];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:0 forTimeScope:7];
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:20.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v22) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:1];
  LOBYTE(v23) = 0;
  v12 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [HKDisplayTypeLocalization alloc];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v24 = &unk_1F4384048;
  v25 = @"BEATS_PER_MINUTE";
  v26 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = [(HKDisplayTypeLocalization *)v13 initWithDisplayNameKey:@"RESTING_HEART_RATE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];

  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:118];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:118 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v9 presentation:v12 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierVO2MaxMake()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:4];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"ml/(kg*min)"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:16.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"ml/(kg*min)"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v26) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v26 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypeSummaryAttribution alloc];
  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v12 = [v11 localizedStringForKey:@"CARDIO_FITNESS_SUMMARY_ATTRIBUTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-CardioFitness"];
  v13 = [(HKDisplayTypeSummaryAttribution *)v10 initWithAttribution:v12 urlAttribute:@"x-apple-health://HealthProfile/CurrentContext" primaryProfileOnly:1];

  v14 = [HKDisplayTypePresentation alloc];
  v15 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v27) = 0;
  v16 = [(HKDisplayTypePresentation *)v14 initWithDefaultConfiguration:v15 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v27 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v13];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [MEMORY[0x1E696C510] unitFromString:@"ml/(kg*min)"];
  v28[0] = &unk_1F4384048;
  v28[1] = &unk_1F4384090;
  v29[0] = @"CARDIO_FITNESS";
  v29[1] = @"CARDIO_FITNESS_PREFERENCES";
  v28[2] = &unk_1F43840C0;
  v29[2] = @"CARDIO_FITNESS_SAMPLE_DETAILS";
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v21 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"CARDIO_FITNESS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-CardioFitness" localizedKeySuffix:0 unitNameKeyOverrides:v20];

  v22 = [HKDisplayType alloc];
  v23 = [MEMORY[0x1E696C2E0] dataTypeWithCode:124];
  v24 = [(HKDisplayType *)v22 initWithDisplayTypeIdentifier:124 categoryIdentifier:11 secondaryCategoryIdentifiers:&unk_1F4381660 objectType:v23 behavior:v9 presentation:v16 localization:v21 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v24;
}

HKDisplayType *HKDisplayTypeIdentifierTachycardiaEventMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  [(HKDisplayTypeChartingRules *)v0 setChartStyle:6 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesValueAxisAnnotation:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartFlatLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartExtendFirstValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v0 setLineChartUsesPointMarkerImage:1 forTimeScope:6];
  v2 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A10 maxValue:&unk_1F4384A50];
  v3 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v2 axisBoundsOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v3];

  LODWORD(v20) = 65537;
  v4 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v20 canBecomeFavorite:? hidden:?];
  v5 = [MEMORY[0x1E696C608] sharedBehavior];
  v6 = [v5 isiPad];

  v7 = 0;
  if ((v6 & 1) == 0)
  {
    v8 = [HKDisplayTypeSummaryAttribution alloc];
    v9 = HKHealthKitFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"HEART_EVENT_SUMMARY_ATTRIBUTION" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
    v7 = [(HKDisplayTypeSummaryAttribution *)v8 initWithAttribution:v10 urlAttribute:@"bridge:root=NOTIFICATIONS_ID&path=com.apple.HeartRateSettings" primaryProfileOnly:0];
  }

  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:7 singleDailyValue:0];
  LOBYTE(v21) = 0;
  v13 = MEMORY[0x1E695E0F8];
  v14 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v21 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v7];

  v15 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"TACHYCARDIA" labelDisplayNameKey:@"TACHYCARDIA" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v13];
  v16 = [HKDisplayType alloc];
  v17 = [MEMORY[0x1E696C2E0] dataTypeWithCode:140];
  v18 = [(HKDisplayType *)v16 initWithDisplayTypeIdentifier:140 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v17 behavior:v4 presentation:v14 localization:v15 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v18;
}

HKDisplayType *HKDisplayTypeIdentifierElectrocardiogramMake()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v14) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v14 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v15) = 0;
  v4 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v15 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v5 = [HKDisplayTypeLocalization alloc];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v16 = &unk_1F4384048;
  v17 = &stru_1F42FFBE0;
  v18 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v9 = [(HKDisplayTypeLocalization *)v5 initWithDisplayNameKey:@"ELECTROCARDIOGRAM" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Cinnamon" localizedKeySuffix:0 unitNameKeyOverrides:v8];

  v10 = [HKDisplayType alloc];
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:144];
  v12 = [(HKDisplayType *)v10 initWithDisplayTypeIdentifier:144 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v11 behavior:v1 presentation:v4 localization:v9 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v12;
}

id HKDisplayTypeIdentifierAudiogramMake()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v17) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v17 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:5 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v18) = 0;
  v4 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v18 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v5 = [HKDisplayTypeLocalization alloc];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v19 = &unk_1F4384048;
  v20 = @"AUDIOGRAM_COUNT";
  v21 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v9 = [(HKDisplayTypeLocalization *)v5 initWithDisplayNameKey:@"AUDIOGRAM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v8];

  v10 = [HKDisplayType alloc];
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:145];
  v12 = [(HKDisplayType *)v10 initWithDisplayTypeIdentifier:145 categoryIdentifier:12 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v11 behavior:v1 presentation:v4 localization:v9 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  v13 = [(HKDisplayType *)v12 localization];
  v14 = [v13 copyWithLocalizationTableNameOverride:@"Localizable-Yodel"];

  v15 = [(HKDisplayType *)v12 copyWithLocalization:v14];

  return v15;
}

HKDisplayType *HKDisplayTypeIdentifierAllergyRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_allergies" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ALLERGY_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:149];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:149 categoryIdentifier:16 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierImmunizationRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_immunizations" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"IMMUNIZATION_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:151];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:151 categoryIdentifier:19 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierLabResultRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_lab_results" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"LAB_RESULT_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:152];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:152 categoryIdentifier:20 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierMedicationRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_medications" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MEDICATION_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:153];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:153 categoryIdentifier:21 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierProcedureRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_procedures" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"PROCEDURE_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:154];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:154 categoryIdentifier:22 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierVitalSignRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_vitals" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"VITAL_SIGN_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:155];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:155 categoryIdentifier:17 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierAtrialFibrillationEventMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  LODWORD(v18) = 65537;
  v2 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v3 = [MEMORY[0x1E696C608] sharedBehavior];
  v4 = [v3 isiPad];

  v5 = 0;
  if ((v4 & 1) == 0)
  {
    v6 = [HKDisplayTypeSummaryAttribution alloc];
    v7 = HKHealthKitFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"HEART_EVENT_SUMMARY_ATTRIBUTION" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
    v5 = [(HKDisplayTypeSummaryAttribution *)v6 initWithAttribution:v8 urlAttribute:@"bridge:root=NOTIFICATIONS_ID&path=com.apple.HeartRateSettings" primaryProfileOnly:0];
  }

  v9 = [HKDisplayTypePresentation alloc];
  v10 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:7 singleDailyValue:0];
  LOBYTE(v19) = 0;
  v11 = MEMORY[0x1E695E0F8];
  v12 = [(HKDisplayTypePresentation *)v9 initWithDefaultConfiguration:v10 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v5];

  v13 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ATRIAL_FIBRILLATION_EVENT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v11];
  v14 = [HKDisplayType alloc];
  v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:156];
  v16 = [(HKDisplayType *)v14 initWithDisplayTypeIdentifier:156 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v15 behavior:v2 presentation:v12 localization:v13 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierAbdominalCrampsMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_ABDOMINAL_CRAMPS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:157];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:157 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381678 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierHeadacheMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_HEADACHE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:160];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:160 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F43816C0 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierPelvicPainMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_PELVIC_PAIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:163];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:163 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381708 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierMoodChangesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_MOOD_CHANGES" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:164];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:164 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381720 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierConstipationMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_CONSTIPATION" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:165];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:165 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381738 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierNauseaMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_NAUSEA" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:168];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:168 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381780 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierSleepChangesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_SLEEP_CHANGES" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:169];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:169 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381798 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierHotFlashesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_HOT_FLASHES" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:171];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:171 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F43817C8 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierHeadphoneAudioExposureMake()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:3 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:1.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v22) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v23) = 0;
  v12 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [HKDisplayTypeLocalization alloc];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v24 = &unk_1F4384048;
  v25 = @"DECIBEL_A_WEIGHTED_SPL";
  v26 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = [(HKDisplayTypeLocalization *)v13 initWithDisplayNameKey:@"HEADPHONE_AUDIO_EXPOSURE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];

  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:173];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:173 categoryIdentifier:12 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v9 presentation:v12 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierEnvironmentalAudioExposureEventMake()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  LODWORD(v15) = 65537;
  v2 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v15 canBecomeFavorite:? hidden:?];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v16) = 0;
  v5 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v16 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [HKDisplayTypeLocalization alloc];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v17 = &unk_1F4384048;
  v18 = &stru_1F42FFBE0;
  v19 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [(HKDisplayTypeLocalization *)v6 initWithDisplayNameKey:@"AUDIO_EXPOSURE_EVENT" labelDisplayNameKey:@"AUDIO_EXPOSURE_EVENT" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v9];

  v11 = [HKDisplayType alloc];
  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:178];
  v13 = [(HKDisplayType *)v11 initWithDisplayTypeIdentifier:178 categoryIdentifier:12 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v12 behavior:v2 presentation:v5 localization:v10 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v13;
}

HKDisplayType *HKDisplayTypeIdentifierAppleMoveTimeMake()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v31 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v31 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v30 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v28 = [v1 quantityWithUnit:v30 doubleValue:0.0];
  v2 = MEMORY[0x1E696C348];
  v29 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v3 = [v2 quantityWithUnit:v29 doubleValue:25.0];
  v4 = [HKValueRange valueRangeWithMinValue:v28 maxValue:v3];
  v34 = &unk_1F4384060;
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:8.0];
  v11 = [HKValueRange valueRangeWithMinValue:v7 maxValue:v10];
  v35[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v13 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v4 axisBoundsOverrides:v12 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v31 setAxisScalingRule:v13];

  LODWORD(v26) = 65537;
  v14 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v26 canBecomeFavorite:? hidden:?];
  v15 = [HKDisplayTypePresentation alloc];
  v16 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v32 = &unk_1F4384060;
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v33 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  LOBYTE(v27) = 0;
  v19 = [(HKDisplayTypePresentation *)v15 initWithDefaultConfiguration:v16 configurationOverrides:v18 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v27 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [HKDisplayTypeLocalization alloc];
  v21 = [(HKDisplayTypeLocalization *)v20 initWithDisplayNameKey:@"MOVE_MINUTE" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-tinker" localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v22 = [HKDisplayType alloc];
  v23 = [MEMORY[0x1E696C2E0] dataTypeWithCode:179];
  v24 = [(HKDisplayType *)v22 initWithDisplayTypeIdentifier:179 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v23 behavior:v14 presentation:v19 localization:v21 chartingRules:v31 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v24;
}

HKDisplayType *HKDisplayTypeIdentifierWalkingDoubleSupportPercentageMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:3 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:1.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:100.0];
  v11 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:v10 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v11];

  LODWORD(v22) = 65537;
  v12 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v13 = [HKDisplayTypePresentation alloc];
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v23) = 0;
  v15 = MEMORY[0x1E695E0F8];
  v16 = [(HKDisplayTypePresentation *)v13 initWithDefaultConfiguration:v14 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v17 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WALKING_DOUBLE_SUPPORT_PERCENTAGE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v15];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:182];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:182 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v12 presentation:v16 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryVitaminCMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"Mayo Clinic" urlAttribute:@"http://www.mayoclinic.org/" primaryProfileOnly:0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"VITAMIN_C" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:34];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:34 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryVitaminKMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:5.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"VITAMIN_K" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:37];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:37 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryCalciumMake()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Institutes of Health urlAttribute:Office of Dietary Supplements" primaryProfileOnly:0, 0];
  v12 = [HKDisplayTypePresentation alloc];
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v25 = &unk_1F4384060;
  v14 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  LOBYTE(v24) = 0;
  v16 = [(HKDisplayTypePresentation *)v12 initWithDefaultConfiguration:v13 configurationOverrides:v15 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v11, v25];

  v17 = [HKDisplayTypeLocalization alloc];
  v18 = [(HKDisplayTypeLocalization *)v17 initWithDisplayNameKey:@"CALCIUM" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:38];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:38 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v16 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierInhalerUsageMake()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:3.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v25) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v10 = [[HKDisplayTypeSummaryAttribution alloc] initWithAttribution:@"National Heart urlAttribute:Lung primaryProfileOnly:and Blood Institute", 0, 0];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v31 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v32[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  LOBYTE(v26) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:v10];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v27 = &unk_1F4384048;
  v28 = &stru_1F42FFBE0;
  v29 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v20 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"INHALER_USAGE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v19];

  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:60];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:60 categoryIdentifier:13 secondaryCategoryIdentifiers:&unk_1F4381588 objectType:v22 behavior:v9 presentation:v15 localization:v20 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierBiologicalSexMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BIOLOGICAL_SEX" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:64];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:64 categoryIdentifier:7 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierAppleStandHourMake()
{
  v23[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  [(HKDisplayTypeChartingRules *)v0 setChartStyle:6 forTimeScope:6];
  v2 = [HKNumericMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:&unk_1F4384A10 minimumValue:0 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:64800.0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v2];

  LODWORD(v18) = 65537;
  v3 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v4 = [HKDisplayTypePresentation alloc];
  v5 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:3 secondaryValue:2 detailChart:7 singleDailyValue:0];
  v22 = &unk_1F4384060;
  v6 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:3 secondaryValue:0 detailChart:8 singleDailyValue:0];
  v23[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  LOBYTE(v19) = 0;
  v8 = [(HKDisplayTypePresentation *)v4 initWithDefaultConfiguration:v5 configurationOverrides:v7 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v9 = [HKDisplayTypeLocalization alloc];
  v10 = [(HKDisplayTypeLocalization *)v9 initWithDisplayNameKey:@"STAND_HOUR" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v11 = [HKDisplayType alloc];
  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:70];
  v13 = [MEMORY[0x1E696C378] predicateForCategorySamplesWithOperatorType:4 value:0];
  v20 = &unk_1F4384060;
  v14 = [MEMORY[0x1E695DFB0] null];
  v21 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v16 = [(HKDisplayType *)v11 initWithDisplayTypeIdentifier:70 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v12 behavior:v3 presentation:v8 localization:v10 chartingRules:v0 defaultChartingPredicate:v13 chartingPredicatesByTimeScope:v15];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierPeakExpiratoryFlowRateMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"L/min"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:10.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"L/min"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v7];

  LODWORD(v18) = 65537;
  v8 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v9 = [HKDisplayTypePresentation alloc];
  v10 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v19) = 0;
  v11 = MEMORY[0x1E695E0F8];
  v12 = [(HKDisplayTypePresentation *)v9 initWithDefaultConfiguration:v10 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SPIROMETRY_PEFR" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v11];
  v14 = [HKDisplayType alloc];
  v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:73];
  v16 = [(HKDisplayType *)v14 initWithDisplayTypeIdentifier:73 categoryIdentifier:13 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v15 behavior:v8 presentation:v12 localization:v13 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierBreastPainMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_BREAST_PAIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:158];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:158 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381690 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierBloatingMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_BLOATING" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:159];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:159 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F43816A8 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierAcneMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_ACNE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:161];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:161 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F43816D8 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierLowerBackPainMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_LOWER_BACK_PAIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:162];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:162 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F43816F0 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierDiarrheaMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_DIARRHEA" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:166];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:166 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381750 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierAppetiteChangesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_APPETITE_CHANGES" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:170];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:170 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F43817B0 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierEnvironmentalAudioExposureMake()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:3 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:1.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v22) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v23) = 0;
  v12 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [HKDisplayTypeLocalization alloc];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v24 = &unk_1F4384048;
  v25 = @"DECIBEL_A_WEIGHTED_SPL";
  v26 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = [(HKDisplayTypeLocalization *)v13 initWithDisplayNameKey:@"ENVIRONMENTAL_AUDIO_EXPOSURE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];

  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:172];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:172 categoryIdentifier:12 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v9 presentation:v12 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierActivityMoveModeMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ACTIVITY_MOVE_MODE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:177];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:177 categoryIdentifier:7 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierSixMinuteWalkTestDistanceMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:100.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v19) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v19 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:3 singleDailyValue:0];
  LOBYTE(v20) = 0;
  v12 = MEMORY[0x1E695E0F8];
  v13 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v20 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SIX_MINUTE_WALK_TEST_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v12];
  v15 = [HKDisplayType alloc];
  v16 = [MEMORY[0x1E696C2E0] dataTypeWithCode:183];
  v17 = [(HKDisplayType *)v15 initWithDisplayTypeIdentifier:183 categoryIdentifier:23 secondaryCategoryIdentifiers:&unk_1F43817E0 objectType:v16 behavior:v9 presentation:v13 localization:v14 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v17;
}

HKDisplayType *HKDisplayTypeIdentifierDietaryVitaminAMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mcg"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:20.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"VITAMIN_A" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:31];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:31 categoryIdentifier:4 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierForcedExpiratoryVolume1Make()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"L"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.2];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"L"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v7];

  LODWORD(v18) = 65537;
  v8 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v18 canBecomeFavorite:? hidden:?];
  v9 = [HKDisplayTypePresentation alloc];
  v10 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v19) = 0;
  v11 = MEMORY[0x1E695E0F8];
  v12 = [(HKDisplayTypePresentation *)v9 initWithDefaultConfiguration:v10 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v19 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SPIROMETRY_FEV1" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v11];
  v14 = [HKDisplayType alloc];
  v15 = [MEMORY[0x1E696C2E0] dataTypeWithCode:72];
  v16 = [(HKDisplayType *)v14 initWithDisplayTypeIdentifier:72 categoryIdentifier:13 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v15 behavior:v8 presentation:v12 localization:v13 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v16;
}

HKDisplayType *HKDisplayTypeIdentifierFatigueMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_FATIGUE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:167];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:167 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381768 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierAppleStandTimeMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:60.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:1 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"STAND_MINUTE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:186];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:186 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierWalkingSpeedMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:18 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.1];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v19) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v19 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v20) = 0;
  v12 = MEMORY[0x1E695E0F8];
  v13 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v20 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WALKING_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v12];
  v15 = [HKDisplayType alloc];
  v16 = [MEMORY[0x1E696C2E0] dataTypeWithCode:187];
  v17 = [(HKDisplayType *)v15 initWithDisplayTypeIdentifier:187 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v16 behavior:v9 presentation:v13 localization:v14 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v17;
}

HKDisplayType *HKDisplayTypeIdentifierWalkingStepLengthMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:18 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.01];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v19) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v19 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v20) = 0;
  v12 = MEMORY[0x1E695E0F8];
  v13 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v20 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WALKING_STEP_LENGTH" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v12];
  v15 = [HKDisplayType alloc];
  v16 = [MEMORY[0x1E696C2E0] dataTypeWithCode:188];
  v17 = [(HKDisplayType *)v15 initWithDisplayTypeIdentifier:188 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v16 behavior:v9 presentation:v13 localization:v14 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v17;
}

HKDisplayType *HKDisplayTypeIdentifierToothbrushingEventMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:6.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v20) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v20 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:3 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v21) = 0;
  v13 = MEMORY[0x1E695E0F8];
  v14 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:1 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v21 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v15 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"TOOTHBRUSHING_EVENT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v13];
  v16 = [HKDisplayType alloc];
  v17 = [MEMORY[0x1E696C2E0] dataTypeWithCode:189];
  v18 = [(HKDisplayType *)v16 initWithDisplayTypeIdentifier:189 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v17 behavior:v10 presentation:v14 localization:v15 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v18;
}

HKDisplayType *HKDisplayTypeIdentifierPregnancyMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"PREGNANCY" labelDisplayNameKey:@"PREGNANCY" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:191];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:191 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierLactationMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"LACTATION" labelDisplayNameKey:@"LACTATION" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:192];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:192 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierContraceptiveMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CONTRACEPTIVE" labelDisplayNameKey:@"CONTRACEPTIVE" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:193];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:193 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierWalkingAsymmetryPercentageMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:1 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:100.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v20) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v20 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:3 singleDailyValue:0];
  LOBYTE(v21) = 0;
  v13 = MEMORY[0x1E695E0F8];
  v14 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v21 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v15 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WALKING_ASYMMETRY_PERCENTAGE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v13];
  v16 = [HKDisplayType alloc];
  v17 = [MEMORY[0x1E696C2E0] dataTypeWithCode:194];
  v18 = [(HKDisplayType *)v16 initWithDisplayTypeIdentifier:194 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v17 behavior:v10 presentation:v14 localization:v15 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v18;
}

HKDisplayType *HKDisplayTypeIdentifierStairAscentSpeedMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:18 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.01];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v19) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v19 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:1 singleDailyValue:0];
  LOBYTE(v20) = 0;
  v12 = MEMORY[0x1E695E0F8];
  v13 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v20 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"STAIR_ASCENT_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v12];
  v15 = [HKDisplayType alloc];
  v16 = [MEMORY[0x1E696C2E0] dataTypeWithCode:195];
  v17 = [(HKDisplayType *)v15 initWithDisplayTypeIdentifier:195 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v16 behavior:v9 presentation:v13 localization:v14 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v17;
}

HKDisplayType *HKDisplayTypeIdentifierStairDescentSpeedMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:18 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.01];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v19) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v19 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:1 singleDailyValue:0];
  LOBYTE(v20) = 0;
  v12 = MEMORY[0x1E695E0F8];
  v13 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v20 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"STAIR_DESCENT_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v12];
  v15 = [HKDisplayType alloc];
  v16 = [MEMORY[0x1E696C2E0] dataTypeWithCode:196];
  v17 = [(HKDisplayType *)v15 initWithDisplayTypeIdentifier:196 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v16 behavior:v9 presentation:v13 localization:v14 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v17;
}

HKDisplayType *HKDisplayTypeIdentifierSleepDurationGoalMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SLEEP_DURATION_GOAL" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:197];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:197 categoryIdentifier:5 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierSleepScheduleMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SLEEP_SCHEDULE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:198];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:198 categoryIdentifier:5 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierHeadphoneAudioExposureEventMake()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  LODWORD(v15) = 65537;
  v2 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v15 canBecomeFavorite:? hidden:?];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v16) = 0;
  v5 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v16 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [HKDisplayTypeLocalization alloc];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v17 = &unk_1F4384048;
  v18 = &stru_1F42FFBE0;
  v19 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [(HKDisplayTypeLocalization *)v6 initWithDisplayNameKey:@"HEADPHONE_AUDIO_EXPOSURE_EVENT" labelDisplayNameKey:@"HEADPHONE_AUDIO_EXPOSURE_EVENT" localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v9];

  v11 = [HKDisplayType alloc];
  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:199];
  v13 = [(HKDisplayType *)v11 initWithDisplayTypeIdentifier:199 categoryIdentifier:12 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v12 behavior:v2 presentation:v5 localization:v10 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v13;
}

HKDisplayType *HKDisplayTypeIdentifierRapidPoundingOrFlutteringHeartbeatMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_RAPID_POUNDING_OR_FLUTTERING_HEARTBEAT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:201];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:201 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierSkippedHeartbeatMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_SKIPPED_HEARTBEAT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:202];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:202 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierFeverMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_FEVER" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:203];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:203 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierShortnessOfBreathMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_SHORTNESS_OF_BREATH" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:204];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:204 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierChestTightnessOrPainMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_CHEST_TIGHTNESS_OR_PAIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:205];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:205 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierFaintingMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_FAINTING" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:206];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:206 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierDizzinessMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_DIZZINESS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:207];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:207 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierInsuranceRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_insurance" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"INSURANCE_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Health-Records" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:217];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:217 categoryIdentifier:27 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierCardioFitnessMedicationsUseMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CARDIO_FITNESS_MEDICATIONS_USE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:218];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:218 categoryIdentifier:7 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierVomitingMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_VOMITING" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:220];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:220 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierHeartburnMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_HEARTBURN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:221];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:221 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierCoughingMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_COUGHING" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:222];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:222 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierWheezingMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_WHEEZING" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:223];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:223 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierSoreThroatMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_SORE_THROAT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:224];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:224 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierCongestionMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_CONGESTION" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:225];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:225 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierRunnyNoseMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_RUNNY_NOSE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:226];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:226 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierVaginalDrynessMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_VAGINAL_DRYNESS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:229];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:229 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F43817F8 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierNightSweatsMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_NIGHT_SWEATS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:230];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:230 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381810 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierChillsMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_CHILLS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:231];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:231 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381828 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierHairLossMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_HAIR_LOSS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:232];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:232 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381840 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierDrySkinMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_DRY_SKIN" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:233];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:233 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381858 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierBladderIncontinenceMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_BLADDER_INCONTINENCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:234];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:234 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381870 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierMemoryLapseMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_MEMORY_LAPSE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:235];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:235 categoryIdentifier:26 secondaryCategoryIdentifiers:&unk_1F4381888 objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierLowCardioFitnessEventMake()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  LODWORD(v15) = 65537;
  v2 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v15 canBecomeFavorite:? hidden:?];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:7 singleDailyValue:0];
  LOBYTE(v16) = 0;
  v5 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v16 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [HKDisplayTypeLocalization alloc];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v17 = &unk_1F4384048;
  v18 = &stru_1F42FFBE0;
  v19 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [(HKDisplayTypeLocalization *)v6 initWithDisplayNameKey:@"CARDIO_FITNESS_EVENT" labelDisplayNameKey:@"CARDIO_FITNESS_EVENT" localizationTableNameOverride:@"Localizable-CardioFitness" localizedKeySuffix:0 unitNameKeyOverrides:v9];

  v11 = [HKDisplayType alloc];
  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:236];
  v13 = [(HKDisplayType *)v11 initWithDisplayTypeIdentifier:236 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v12 behavior:v2 presentation:v5 localization:v10 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v13;
}

HKDisplayType *HKDisplayTypeIdentifierHandwashingEventMake()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:17 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"s"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"s"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:25.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v23) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v23 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v24) = 0;
  v13 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:1 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v24 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v14 = [HKDisplayTypeLocalization alloc];
  v15 = [MEMORY[0x1E696C510] unitFromString:@"s"];
  v25 = &unk_1F4384048;
  v26 = @"SECONDS_MEDIUM";
  v27 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v18 = [(HKDisplayTypeLocalization *)v14 initWithDisplayNameKey:@"HANDWASHING_EVENT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v17];

  v19 = [HKDisplayType alloc];
  v20 = [MEMORY[0x1E696C2E0] dataTypeWithCode:237];
  v21 = [(HKDisplayType *)v19 initWithDisplayTypeIdentifier:237 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v20 behavior:v10 presentation:v13 localization:v18 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v21;
}

HKDisplayType *HKDisplayTypeIdentifierGeneralizedBodyAcheMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_BODY_ACHE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:240];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:240 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierLossOfSmellMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_LOSS_OF_SMELL" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:241];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:241 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierLossOfTasteMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SYMPTOM_LOSS_OF_TASTE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:242];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:242 categoryIdentifier:26 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierPregnancyTestResultMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:10 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:3 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"PREGNANCY_TEST_RESULT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:243];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:243 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierProgesteroneTestResultMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:10 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:3 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"PROGESTERONE_TEST_RESULT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:244];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:244 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierAtrialFibrillationBurdenMake()
{
  v28 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:1 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v28 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v27 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v26 = [v1 quantityWithUnit:v27 doubleValue:0.0];
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:100.0];
  v5 = [HKValueRange valueRangeWithMinValue:v26 maxValue:v4];
  v6 = MEMORY[0x1E696C348];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v8 = [v6 quantityWithUnit:v7 doubleValue:0.0];
  v9 = MEMORY[0x1E696C348];
  v10 = [MEMORY[0x1E696C510] unitFromString:@"%"];
  v11 = [v9 quantityWithUnit:v10 doubleValue:100.0];
  v12 = [HKValueRange valueRangeWithMinValue:v8 maxValue:v11];
  v13 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v5 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:v12];
  [(HKDisplayTypeChartingRules *)v28 setAxisScalingRule:v13];

  LODWORD(v24) = 65537;
  v14 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v24 canBecomeFavorite:? hidden:?];
  v15 = [HKDisplayTypePresentation alloc];
  v16 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:3 singleDailyValue:0];
  LOBYTE(v25) = 0;
  v17 = MEMORY[0x1E695E0F8];
  v18 = [(HKDisplayTypePresentation *)v15 initWithDefaultConfiguration:v16 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v25 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v19 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ATRIAL_FIBRILLATION_BURDEN" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-AFibBurden" localizedKeySuffix:0 unitNameKeyOverrides:v17];
  v20 = [HKDisplayType alloc];
  v21 = [MEMORY[0x1E696C2E0] dataTypeWithCode:248];
  v22 = [(HKDisplayType *)v20 initWithDisplayTypeIdentifier:248 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v21 behavior:v14 presentation:v18 localization:v19 chartingRules:v28 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v22;
}

HKDisplayType *HKDisplayTypeIdentifierAppleWalkingSteadinessMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:4];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = HKWalkingSteadinessAxisScalingRule();
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v2];

  LODWORD(v13) = 65537;
  v3 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v13 canBecomeFavorite:? hidden:?];
  v4 = [HKDisplayTypePresentation alloc];
  v5 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v14) = 0;
  v6 = MEMORY[0x1E695E0F8];
  v7 = [(HKDisplayTypePresentation *)v4 initWithDefaultConfiguration:v5 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:100.0 isCriticalForAutoscale:v14 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v8 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WALKING_STEADINESS" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v6];
  v9 = [HKDisplayType alloc];
  v10 = [MEMORY[0x1E696C2E0] dataTypeWithCode:249];
  v11 = [(HKDisplayType *)v9 initWithDisplayTypeIdentifier:249 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v10 behavior:v3 presentation:v7 localization:v8 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v11;
}

id HKWalkingSteadinessAxisScalingRule()
{
  hk_minWalkingSteadinessValueForClassification();
  v1 = v0;
  hk_maxWalkingSteadinessValueForClassification();
  v3 = v2;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:v1 * 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v3 * 100.0];
  v6 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v5];

  v7 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v6 axisBoundsOverrides:0];
  [v7 setShouldExpandBoundsForOutliers:0];

  return v7;
}

HKDisplayType *HKDisplayTypeIdentifierAppleWalkingSteadinessEventMake()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  LODWORD(v15) = 65537;
  v2 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v15 canBecomeFavorite:? hidden:?];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v16) = 0;
  v5 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v16 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [HKDisplayTypeLocalization alloc];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v17 = &unk_1F4384048;
  v18 = &stru_1F42FFBE0;
  v19 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [(HKDisplayTypeLocalization *)v6 initWithDisplayNameKey:@"WALKING_STEADINESS_EVENT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v9];

  v11 = [HKDisplayType alloc];
  v12 = [MEMORY[0x1E696C2E0] dataTypeWithCode:250];
  v13 = [(HKDisplayType *)v11 initWithDisplayTypeIdentifier:250 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v12 behavior:v2 presentation:v5 localization:v10 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v13;
}

HKDisplayType *HKDisplayTypeIdentifierNumberOfAlcoholicBeveragesMake()
{
  v39[1] = *MEMORY[0x1E69E9840];
  v33 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  [(HKDisplayTypeChartingRules *)v33 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v32 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v2 = [v1 quantityWithUnit:v32 doubleValue:0.0];
  v3 = MEMORY[0x1E696C348];
  v4 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v5 = [v3 quantityWithUnit:v4 doubleValue:2.0];
  v6 = [HKValueRange valueRangeWithMinValue:v2 maxValue:v5];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:2.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v6 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v33 setAxisScalingRule:v14];

  LODWORD(v30) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v30 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v38 = &unk_1F4384060;
  v18 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v39[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  LOBYTE(v31) = 0;
  v20 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:v19 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v31 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v21 = [HKDisplayTypeLocalization alloc];
  v22 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v34 = &unk_1F4384048;
  v35 = @"NUMBER_OF_ALCOHOLIC_BEVERAGES";
  v36 = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v37 = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v25 = [(HKDisplayTypeLocalization *)v21 initWithDisplayNameKey:@"NUMBER_OF_ALCOHOLIC_BEVERAGES" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v24];

  v26 = [HKDisplayType alloc];
  v27 = [MEMORY[0x1E696C2E0] dataTypeWithCode:251];
  v28 = [(HKDisplayType *)v26 initWithDisplayTypeIdentifier:251 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v27 behavior:v15 presentation:v20 localization:v25 chartingRules:v33 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v28;
}

HKDisplayType *HKDisplayTypeIdentifierHypertensionEventMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  LODWORD(v12) = 65537;
  v2 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v12 canBecomeFavorite:? hidden:?];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:7 singleDailyValue:0];
  LOBYTE(v13) = 0;
  v5 = MEMORY[0x1E695E0F8];
  v6 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v13 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v7 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"HYPERTENSION_EVENT" labelDisplayNameKey:@"HYPERTENSION_EVENT" localizationTableNameOverride:@"Localizable-Hermit" localizedKeySuffix:0 unitNameKeyOverrides:v5];
  v8 = [HKDisplayType alloc];
  v9 = [MEMORY[0x1E696C2E0] dataTypeWithCode:254];
  v10 = [(HKDisplayType *)v8 initWithDisplayTypeIdentifier:254 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v9 behavior:v2 presentation:v6 localization:v7 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v10;
}

HKDisplayType *HKDisplayTypeIdentifierAppleSleepingWristTemperatureMake()
{
  v42 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:4];
  [(HKDisplayTypeChartingRules *)v42 setLineChartUsesValueAxisAnnotation:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v42 setLineChartExtendLastValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v42 setLineChartFlatLastValue:1 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v42 setLineChartExtendFirstValue:0 forTimeScope:6];
  [(HKDisplayTypeChartingRules *)v42 setLineChartUsesPointMarkerImage:0 forTimeScope:6];
  v0 = MEMORY[0x1E696C348];
  v40 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v38 = [v0 quantityWithUnit:v40 doubleValue:-2.0];
  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:2.0];
  v4 = [HKValueRange valueRangeWithMinValue:v38 maxValue:v3];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:-2.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:2.0];
  v11 = [HKValueRange valueRangeWithMinValue:v7 maxValue:v10];
  v12 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v4 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:v11];
  [(HKDisplayTypeChartingRules *)v42 setAxisScalingRule:v12];

  v13 = MEMORY[0x1E696C348];
  v41 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v39 = [v13 quantityWithUnit:v41 doubleValue:-1.0];
  v14 = MEMORY[0x1E696C348];
  v37 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v15 = [v14 quantityWithUnit:v37 doubleValue:1.0];
  v16 = [HKValueRange valueRangeWithMinValue:v39 maxValue:v15];
  v17 = MEMORY[0x1E696C348];
  v18 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v19 = [v17 quantityWithUnit:v18 doubleValue:-1.0];
  v20 = MEMORY[0x1E696C348];
  v21 = [MEMORY[0x1E696C510] unitFromString:@"deltaDegC"];
  v22 = [v20 quantityWithUnit:v21 doubleValue:1.0];
  v23 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v22];
  v24 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v16 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:v23];
  [(HKDisplayTypeChartingRules *)v42 setCompactChartAxisScalingRule:v24];

  LODWORD(v35) = 65537;
  v25 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:1 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:1 supportsAssociatedSamples:v35 canBecomeFavorite:? hidden:?];
  v26 = [HKDisplayTypePresentation alloc];
  v27 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:1];
  LOBYTE(v36) = 0;
  v28 = MEMORY[0x1E695E0F8];
  v29 = [(HKDisplayTypePresentation *)v26 initWithDefaultConfiguration:v27 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v36 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v30 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"SLEEPING_WRIST_TEMPERATURE" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Kali" localizedKeySuffix:0 unitNameKeyOverrides:v28];
  v31 = [HKDisplayType alloc];
  v32 = [MEMORY[0x1E696C2E0] dataTypeWithCode:256];
  v33 = [(HKDisplayType *)v31 initWithDisplayTypeIdentifier:256 categoryIdentifier:6 secondaryCategoryIdentifiers:&unk_1F43818A0 objectType:v32 behavior:v25 presentation:v29 localization:v30 chartingRules:v42 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v33;
}

HKDisplayType *HKDisplayTypeIdentifierVisionPrescriptionMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:@"eyeglasses" detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"VISION_PRESCRIPTION" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-VRX" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:257];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:257 categoryIdentifier:6 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierRunningStrideLengthMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:16 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:2.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.5];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:4.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"RUNNING_STRIDE_LENGTH" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:258];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:258 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierRunningVerticalOscillationMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:16 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:10.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:1.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"cm"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:20.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"RUNNING_VERTICAL_OSCILLATION" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:259];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:259 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierRunningGroundContactTimeMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"ms"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:100.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"ms"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"ms"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:50.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"ms"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:400.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"RUNNING_GROUND_CONTACT_TIME" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:260];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:260 categoryIdentifier:23 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierPersistentIntermenstrualBleedingMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_SPOTTING" labelDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_SPOTTING" localizationTableNameOverride:@"Localizable-Selene" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:262];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:262 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierProlongedMenstrualPeriodsMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_PROLONGED" labelDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_PROLONGED" localizationTableNameOverride:@"Localizable-Selene" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:263];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:263 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierIrregularMenstrualCyclesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_IRREGULAR" labelDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_IRREGULAR" localizationTableNameOverride:@"Localizable-Selene" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:264];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:264 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierInfrequentMenstrualCyclesMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_INFREQUENT" labelDisplayNameKey:@"MENSTRUAL_CYCLE_DEVIATION_INFREQUENT" localizationTableNameOverride:@"Localizable-Selene" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:265];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:265 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierHeartRateRecoveryMake()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:20.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v22) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v23) = 0;
  v12 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [HKDisplayTypeLocalization alloc];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v24 = &unk_1F4384048;
  v25 = @"BEATS_PER_MINUTE";
  v26 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = [(HKDisplayTypeLocalization *)v13 initWithDisplayNameKey:@"HEART_RATE_RECOVERY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];

  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:266];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:266 categoryIdentifier:11 secondaryCategoryIdentifiers:&unk_1F43818B8 objectType:v19 behavior:v9 presentation:v12 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierClinicalNoteRecordMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 0x10000;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:@"health_records_clinical_notes" summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CLINICAL_NOTES_RECORDS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Clinical-Notes" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:268];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:268 categoryIdentifier:30 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierUnderwaterDepthMake()
{
  v40[2] = *MEMORY[0x1E69E9840];
  v35 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:3 chartingOptions:6 preferredTimeScope:6];
  v0 = [MEMORY[0x1E696C510] unitFromString:@"ft"];
  v39[0] = v0;
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  v40[0] = v1;
  v2 = [MEMORY[0x1E696C510] unitFromString:?];
  v39[1] = v2;
  v3 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:1];
  v40[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [(HKDisplayTypeChartingRules *)v35 setAllowedDecimalPrecisionRule:0 perUnitPrecisionRules:v4];

  v5 = MEMORY[0x1E696C348];
  v36 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v34 = [v5 quantityWithUnit:v36 doubleValue:0.0];
  v6 = MEMORY[0x1E696C348];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v8 = [v6 quantityWithUnit:v7 doubleValue:2.0];
  v9 = [HKValueRange valueRangeWithMinValue:v34 maxValue:v8];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:0.0];
  v13 = MEMORY[0x1E696C348];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"m"];
  v15 = [v13 quantityWithUnit:v14 doubleValue:40.0];
  v16 = [HKValueRange valueRangeWithMinValue:v12 maxValue:v15];
  v17 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v9 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:v16];
  [(HKDisplayTypeChartingRules *)v35 setAxisScalingRule:v17];

  v18 = [HKRemoteChartConfiguration alloc];
  v37 = &unk_1F4384060;
  v19 = [MEMORY[0x1E695DF10] hk_chartStatisticsIntervalComponentsForValue:2 forComponent:32];
  v38 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v21 = [(HKRemoteChartConfiguration *)v18 initWithStatisticIntervalComponentsByTimeScope:v20];
  [(HKDisplayTypeChartingRules *)v35 setRemoteChartConfiguration:v21];

  LODWORD(v32) = 65537;
  v22 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v32 canBecomeFavorite:? hidden:?];
  v23 = [HKDisplayTypePresentation alloc];
  v24 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v33) = 0;
  v25 = MEMORY[0x1E695E0F8];
  v26 = [(HKDisplayTypePresentation *)v23 initWithDefaultConfiguration:v24 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v33 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v27 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"UNDERWATER_DEPTH" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v25];
  v28 = [HKDisplayType alloc];
  v29 = [MEMORY[0x1E696C2E0] dataTypeWithCode:269];
  v30 = [(HKDisplayType *)v28 initWithDisplayTypeIdentifier:269 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v29 behavior:v22 presentation:v26 localization:v27 chartingRules:v35 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v30;
}

HKDisplayType *HKDisplayTypeIdentifierRunningPowerMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v0 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:100.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:300.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"RUNNING_POWER" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:270];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:270 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierEnvironmentalSoundReductionMake()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:3 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:1.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:v7 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v8];

  LODWORD(v22) = 65537;
  v9 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v10 = [HKDisplayTypePresentation alloc];
  v11 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v23) = 0;
  v12 = [(HKDisplayTypePresentation *)v10 initWithDefaultConfiguration:v11 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v13 = [HKDisplayTypeLocalization alloc];
  v14 = [MEMORY[0x1E696C510] unitFromString:@"dBASPL"];
  v24 = &unk_1F4384048;
  v25 = @"DECIBEL_A_WEIGHTED_SPL";
  v26 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v27[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = [(HKDisplayTypeLocalization *)v13 initWithDisplayNameKey:@"ENVIRONMENTAL_SOUND_REDUCTION" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v16];

  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:272];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:272 categoryIdentifier:12 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v9 presentation:v12 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierMedicationDoseEventMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MEDICATION_TRACKING" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Meds" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:273];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:273 categoryIdentifier:31 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierRunningSpeedMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:16 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.1];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:7.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"RUNNING_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:274];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:274 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierAppleSleepingBreathingDisturbancesMake()
{
  v34[1] = *MEMORY[0x1E69E9840];
  v30 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v0 = MEMORY[0x1E696C348];
  v29 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v1 = [v0 quantityWithUnit:v29 doubleValue:22.0];
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:0.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:22.0];
  v11 = [HKValueRange valueRangeWithMinValue:v7 maxValue:v10];
  v12 = v1;
  v13 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v1 minimumValue:v4 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v11];
  [(HKDisplayTypeChartingRules *)v30 setAxisScalingRule:v13];

  LODWORD(v27) = 65537;
  v14 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:1 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v27 canBecomeFavorite:? hidden:?];
  v15 = [HKDisplayTypePresentation alloc];
  v16 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:2 detailChart:3 singleDailyValue:0];
  LOBYTE(v28) = 0;
  v17 = [(HKDisplayTypePresentation *)v15 initWithDefaultConfiguration:v16 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v28 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v18 = [HKDisplayTypeLocalization alloc];
  v19 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v31 = &unk_1F4384048;
  v32 = @"SLEEP_BREATHING_DISTURBANCES";
  v33 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v22 = [(HKDisplayTypeLocalization *)v18 initWithDisplayNameKey:@"SLEEP_BREATHING_DISTURBANCES" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Nebula" localizedKeySuffix:0 unitNameKeyOverrides:v21];

  v23 = [HKDisplayType alloc];
  v24 = [MEMORY[0x1E696C2E0] dataTypeWithCode:275];
  v25 = [(HKDisplayType *)v23 initWithDisplayTypeIdentifier:275 categoryIdentifier:13 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v24 behavior:v14 presentation:v17 localization:v22 chartingRules:v30 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v25;
}

HKDisplayType *HKDisplayTypeIdentifierSleepApneaEventMake()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:5];
  LODWORD(v14) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v14 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v15) = 0;
  v4 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v15 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v5 = [HKDisplayTypeLocalization alloc];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"count"];
  v16 = &unk_1F4384048;
  v17 = &stru_1F42FFBE0;
  v18 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v9 = [(HKDisplayTypeLocalization *)v5 initWithDisplayNameKey:@"SLEEP_APNEA_EVENT" labelDisplayNameKey:@"SLEEP_APNEA_EVENT" localizationTableNameOverride:@"Localizable-Nebula" localizedKeySuffix:0 unitNameKeyOverrides:v8];

  v10 = [HKDisplayType alloc];
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:276];
  v12 = [(HKDisplayType *)v10 initWithDisplayTypeIdentifier:276 categoryIdentifier:13 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v11 behavior:v1 presentation:v4 localization:v9 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v12;
}

HKDisplayType *HKDisplayTypeIdentifierWaterTemperatureMake()
{
  v30[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:3 chartingOptions:0 preferredTimeScope:6];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"degC"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:5.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"degC"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:10.0];
  v8 = MEMORY[0x1E696C348];
  v9 = [MEMORY[0x1E696C510] unitFromString:@"degC"];
  v10 = [v8 quantityWithUnit:v9 doubleValue:30.0];
  v11 = [HKValueRange valueRangeWithMinValue:v7 maxValue:v10];
  v12 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v4 minimumValue:0 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v11];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v12];

  v13 = [HKRemoteChartConfiguration alloc];
  v29 = &unk_1F4384060;
  v14 = [MEMORY[0x1E695DF10] hk_chartStatisticsIntervalComponentsForValue:2 forComponent:32];
  v30[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v16 = [(HKRemoteChartConfiguration *)v13 initWithStatisticIntervalComponentsByTimeScope:v15];
  [(HKDisplayTypeChartingRules *)v0 setRemoteChartConfiguration:v16];

  LODWORD(v27) = 65537;
  v17 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v27 canBecomeFavorite:? hidden:?];
  v18 = [HKDisplayTypePresentation alloc];
  v19 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v28) = 0;
  v20 = MEMORY[0x1E695E0F8];
  v21 = [(HKDisplayTypePresentation *)v18 initWithDefaultConfiguration:v19 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v28 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v22 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WATER_TEMPERATURE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v20];
  v23 = [HKDisplayType alloc];
  v24 = [MEMORY[0x1E696C2E0] dataTypeWithCode:277];
  v25 = [(HKDisplayType *)v23 initWithDisplayTypeIdentifier:277 categoryIdentifier:14 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v24 behavior:v17 presentation:v21 localization:v22 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v25;
}

HKDisplayType *HKDisplayTypeIdentifierTimeInDaylightMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"min"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:60.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"TIME_IN_DAYLIGHT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:279];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:279 categoryIdentifier:14 secondaryCategoryIdentifiers:&unk_1F43818D0 objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierCyclingPowerMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:100.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:300.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CYCLING_POWER" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:280];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:280 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierCyclingSpeedMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:16 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.1];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:13.4];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CYCLING_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:281];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:281 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierCyclingCadenceMake()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  v31 = v0;
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v30 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v29 = [v2 quantityWithUnit:v30 doubleValue:0.1];
  v3 = MEMORY[0x1E696C348];
  v4 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v5 = [v3 quantityWithUnit:v4 doubleValue:0.0];
  v6 = MEMORY[0x1E696C348];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v8 = [v6 quantityWithUnit:v7 doubleValue:0.0];
  v9 = MEMORY[0x1E696C348];
  v10 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v11 = [v9 quantityWithUnit:v10 doubleValue:100.0];
  v12 = [HKValueRange valueRangeWithMinValue:v8 maxValue:v11];
  v13 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v29 minimumValue:v5 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v12];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v13];

  LODWORD(v27) = 65537;
  v14 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v27 canBecomeFavorite:? hidden:?];
  v15 = [HKDisplayTypePresentation alloc];
  v16 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v28) = 0;
  v17 = [(HKDisplayTypePresentation *)v15 initWithDefaultConfiguration:v16 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v28 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v18 = [HKDisplayTypeLocalization alloc];
  v19 = [MEMORY[0x1E696C510] unitFromString:@"count/min"];
  v32 = &unk_1F4384048;
  v33 = @"ROTATIONS_PER_MINUTE";
  v34 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v35[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v22 = [(HKDisplayTypeLocalization *)v18 initWithDisplayNameKey:@"CYCLING_CADENCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v21];

  v23 = [HKDisplayType alloc];
  v24 = [MEMORY[0x1E696C2E0] dataTypeWithCode:282];
  v25 = [(HKDisplayType *)v23 initWithDisplayTypeIdentifier:282 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v24 behavior:v14 presentation:v17 localization:v22 chartingRules:v31 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v25;
}

HKDisplayType *HKDisplayTypeIdentifierCyclingFunctionalThresholdPowerMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:20.0];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:50.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"W"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:200.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CYCLING_FUNCTIONAL_THRESHOLD_POWER" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:283];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:283 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierStateOfMindMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A60 maxValue:&unk_1F4384A70];
  v2 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A60 maxValue:&unk_1F4384A70];
  v3 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v1 axisBoundsOverrides:0 noDataAxisBounds:v2];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v3];

  LODWORD(v14) = 65537;
  v4 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v14 canBecomeFavorite:? hidden:?];
  v5 = [HKDisplayTypePresentation alloc];
  v6 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v15) = 0;
  v7 = MEMORY[0x1E695E0F8];
  v8 = [(HKDisplayTypePresentation *)v5 initWithDefaultConfiguration:v6 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v15 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v9 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"STATE_OF_MIND" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v7];
  v10 = [HKDisplayType alloc];
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:284];
  v12 = [(HKDisplayType *)v10 initWithDisplayTypeIdentifier:284 categoryIdentifier:10 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v11 behavior:v4 presentation:v8 localization:v9 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v12;
}

HKDisplayType *HKDisplayTypeIdentifierHypertensivePatternMeasurementMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  v1 = [[HKStaticDecimalPrecisionRule alloc] initWithDecimalPrecision:0];
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  LODWORD(v12) = 0;
  v2 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v12 canBecomeFavorite:? hidden:?];
  v3 = [HKDisplayTypePresentation alloc];
  v4 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:4 secondaryValue:0 detailChart:7 singleDailyValue:0];
  LOBYTE(v13) = 0;
  v5 = MEMORY[0x1E695E0F8];
  v6 = [(HKDisplayTypePresentation *)v3 initWithDefaultConfiguration:v4 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v13 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v7 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"HYPERTENSIVE_PATTERN_MEASUREMENT" labelDisplayNameKey:@"HYPERTENSIVE_PATTERN_MEASUREMENT" localizationTableNameOverride:@"Localizable-Hermit" localizedKeySuffix:0 unitNameKeyOverrides:v5];
  v8 = [HKDisplayType alloc];
  v9 = [MEMORY[0x1E696C2E0] dataTypeWithCode:285];
  v10 = [(HKDisplayType *)v8 initWithDisplayTypeIdentifier:285 categoryIdentifier:11 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v9 behavior:v2 presentation:v6 localization:v7 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v10;
}

HKDisplayType *HKDisplayTypeIdentifierPhysicalEffortMake()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:9 chartingOptions:2 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  v31 = v0;
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v30 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v29 = [v2 quantityWithUnit:v30 doubleValue:3.0];
  v3 = MEMORY[0x1E696C348];
  v4 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v5 = [v3 quantityWithUnit:v4 doubleValue:0.0];
  v6 = MEMORY[0x1E696C348];
  v7 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v8 = [v6 quantityWithUnit:v7 doubleValue:0.0];
  v9 = MEMORY[0x1E696C348];
  v10 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v11 = [v9 quantityWithUnit:v10 doubleValue:5.0];
  v12 = [HKValueRange valueRangeWithMinValue:v8 maxValue:v11];
  v13 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v29 minimumValue:v5 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v12];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v13];

  LODWORD(v27) = 65537;
  v14 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v27 canBecomeFavorite:? hidden:?];
  v15 = [HKDisplayTypePresentation alloc];
  v16 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:1 singleDailyValue:0];
  LOBYTE(v28) = 0;
  v17 = [(HKDisplayTypePresentation *)v15 initWithDefaultConfiguration:v16 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v28 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v18 = [HKDisplayTypeLocalization alloc];
  v19 = [MEMORY[0x1E696C510] unitFromString:@"kcal/(kg*hr)"];
  v34 = v19;
  v32[0] = &unk_1F4384048;
  v32[1] = &unk_1F4384090;
  v33[0] = @"PHYSICAL_EFFORT";
  v33[1] = @"PHYSICAL_EFFORT_PREFERENCES";
  v32[2] = &unk_1F43840C0;
  v33[2] = @"PHYSICAL_EFFORT_SAMPLE_DETAILS";
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v35[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v22 = [(HKDisplayTypeLocalization *)v18 initWithDisplayNameKey:@"PHYSICAL_EFFORT" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v21];

  v23 = [HKDisplayType alloc];
  v24 = [MEMORY[0x1E696C2E0] dataTypeWithCode:286];
  v25 = [(HKDisplayType *)v23 initWithDisplayTypeIdentifier:286 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v24 behavior:v14 presentation:v17 localization:v22 chartingRules:v31 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v25;
}

HKDisplayType *HKDisplayTypeIdentifierGAD7Make()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:3];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"GAD7" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:287];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:287 categoryIdentifier:10 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierPHQ9Make()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:2 preferredTimeScope:3];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"PHQ9" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:288];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:288 categoryIdentifier:10 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierPaddleSportsDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"PADDLE_SPORTS_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:294];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:294 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierRowingDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"ROWING_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:295];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:295 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierCrossCountrySkiingDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"CROSS_COUNTRY_SKIING_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:296];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:296 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierSkatingSportsDistanceMake()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"mi"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:1.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v22) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:1 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v22 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:2 detailChart:4 singleDailyValue:0];
  v24 = &unk_1F4384060;
  v13 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:2 secondaryValue:0 detailChart:4 singleDailyValue:0];
  v25[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  LOBYTE(v23) = 0;
  v15 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:v14 scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v23 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0, v24];

  v16 = [HKDisplayTypeLocalization alloc];
  v17 = [(HKDisplayTypeLocalization *)v16 initWithDisplayNameKey:@"SKATING_SPORTS_DISTANCE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:MEMORY[0x1E695E0F8]];
  v18 = [HKDisplayType alloc];
  v19 = [MEMORY[0x1E696C2E0] dataTypeWithCode:297];
  v20 = [(HKDisplayType *)v18 initWithDisplayTypeIdentifier:297 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v19 behavior:v10 presentation:v15 localization:v17 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v20;
}

HKDisplayType *HKDisplayTypeIdentifierEstimatedWorkoutEffortScoreMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"appleEffortScore"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"appleEffortScore"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:20.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v20) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v20 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:1 singleDailyValue:0];
  LOBYTE(v21) = 0;
  v13 = MEMORY[0x1E695E0F8];
  v14 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v21 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v15 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ESTIMATED_WORKOUT_EFFORT_SCORE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v13];
  v16 = [HKDisplayType alloc];
  v17 = [MEMORY[0x1E696C2E0] dataTypeWithCode:298];
  v18 = [(HKDisplayType *)v16 initWithDisplayTypeIdentifier:298 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v17 behavior:v10 presentation:v14 localization:v15 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v18;
}

HKDisplayType *HKDisplayTypeIdentifierRowingSpeedMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:16 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.1];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:4.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"ROWING_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:301];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:301 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierCrossCountrySkiingSpeedMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:16 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.1];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:12.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"CROSS_COUNTRY_SKIING_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:302];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:302 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierPaddleSportsSpeedMake()
{
  v27 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:16 preferredTimeScope:5];
  v0 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v27 setAllowedDecimalPrecisionRule:v0 perUnitPrecisionRules:0];

  v1 = MEMORY[0x1E696C348];
  v2 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v3 = [v1 quantityWithUnit:v2 doubleValue:0.1];
  v4 = MEMORY[0x1E696C348];
  v5 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v6 = [v4 quantityWithUnit:v5 doubleValue:0.0];
  v7 = MEMORY[0x1E696C348];
  v8 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v9 = [v7 quantityWithUnit:v8 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  v11 = [MEMORY[0x1E696C510] unitFromString:@"m/s"];
  v12 = [v10 quantityWithUnit:v11 doubleValue:4.0];
  v13 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v12];
  v14 = [HKQuantityMinimumRangeAxisScalingRule ruleWithDefaultYAxisRange:v3 minimumValue:v6 maximumValue:0 axisRangeOverrides:0 noDataAxisBounds:v13];
  [(HKDisplayTypeChartingRules *)v27 setAxisScalingRule:v14];

  LODWORD(v25) = 65537;
  v15 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v25 canBecomeFavorite:? hidden:?];
  v16 = [HKDisplayTypePresentation alloc];
  v17 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:1 detailChart:3 singleDailyValue:0];
  LOBYTE(v26) = 0;
  v18 = MEMORY[0x1E695E0F8];
  v19 = [(HKDisplayTypePresentation *)v16 initWithDefaultConfiguration:v17 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v26 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v20 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"PADDLE_SPORTS_SPEED" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v18];
  v21 = [HKDisplayType alloc];
  v22 = [MEMORY[0x1E696C2E0] dataTypeWithCode:303];
  v23 = [(HKDisplayType *)v21 initWithDisplayTypeIdentifier:303 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v22 behavior:v15 presentation:v19 localization:v20 chartingRules:v27 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v23;
}

HKDisplayType *HKDisplayTypeIdentifierWorkoutEffortScoreMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:4 chartingOptions:0 preferredTimeScope:5];
  v1 = objc_alloc_init(HKTieredDecimalPrecisionRule);
  [(HKDisplayTypeChartingRules *)v0 setAllowedDecimalPrecisionRule:v1 perUnitPrecisionRules:0];

  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] unitFromString:@"appleEffortScore"];
  v4 = [v2 quantityWithUnit:v3 doubleValue:0.0];
  v5 = MEMORY[0x1E696C348];
  v6 = [MEMORY[0x1E696C510] unitFromString:@"appleEffortScore"];
  v7 = [v5 quantityWithUnit:v6 doubleValue:20.0];
  v8 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v7];
  v9 = [HKQuantityFixedAxisScalingRule ruleWithDefaultAxisBounds:v8 axisBoundsOverrides:0 minimumValue:0 maximumValue:0 noDataAxisBounds:0];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v9];

  LODWORD(v20) = 65537;
  v10 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v20 canBecomeFavorite:? hidden:?];
  v11 = [HKDisplayTypePresentation alloc];
  v12 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:1 secondaryValue:0 detailChart:1 singleDailyValue:0];
  LOBYTE(v21) = 0;
  v13 = MEMORY[0x1E695E0F8];
  v14 = [(HKDisplayTypePresentation *)v11 initWithDefaultConfiguration:v12 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:1 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v21 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v15 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"WORKOUT_EFFORT_SCORE" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v13];
  v16 = [HKDisplayType alloc];
  v17 = [MEMORY[0x1E696C2E0] dataTypeWithCode:304];
  v18 = [(HKDisplayType *)v16 initWithDisplayTypeIdentifier:304 categoryIdentifier:2 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v17 behavior:v10 presentation:v14 localization:v15 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v18;
}

HKDisplayType *HKDisplayTypeIdentifierAppleBalanceMetricsMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:6];
  v1 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A80 maxValue:&unk_1F4384A50];
  v2 = [HKValueRange valueRangeWithMinValue:&unk_1F4384A80 maxValue:&unk_1F4384A50];
  v3 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v1 axisBoundsOverrides:0 noDataAxisBounds:v2];
  [(HKDisplayTypeChartingRules *)v0 setAxisScalingRule:v3];

  LODWORD(v14) = 65537;
  v4 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v14 canBecomeFavorite:? hidden:?];
  v5 = [HKDisplayTypePresentation alloc];
  v6 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v15) = 0;
  v7 = MEMORY[0x1E695E0F8];
  v8 = [(HKDisplayTypePresentation *)v5 initWithDefaultConfiguration:v6 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v15 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v9 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"APPLE_BALANCE_METRICS" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Balance" localizedKeySuffix:0 unitNameKeyOverrides:v7];
  v10 = [HKDisplayType alloc];
  v11 = [MEMORY[0x1E696C2E0] dataTypeWithCode:305];
  v12 = [(HKDisplayType *)v10 initWithDisplayTypeIdentifier:305 categoryIdentifier:1 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v11 behavior:v4 presentation:v8 localization:v9 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v12;
}

HKDisplayType *HKDisplayTypeIdentifierUserAnnotatedMedicationTypeMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1 chartingOptions:0 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"MEDICATION_TRACKING" labelDisplayNameKey:0 localizationTableNameOverride:@"Localizable-Meds" localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:306];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:306 categoryIdentifier:31 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierBleedingDuringPregnancyMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:10 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:6 secondaryValue:3 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BLEEDING_DURING_PREGNANCY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:313];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:313 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

HKDisplayType *HKDisplayTypeIdentifierBleedingAfterPregnancyMake()
{
  v0 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:8 chartingOptions:10 preferredTimeScope:5];
  LODWORD(v11) = 65537;
  v1 = [HKDisplayTypeBehavior initWithStatisticsMergeStrategy:"initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:" preferredCalendaryDayAlignment:0 allowEditView:0 allowsSourceReordering:1 unitPreferenceChangeConfirmation:0 chartsRelativeData:0 appearsInDataTypeSearch:0 supportsAssociatedSamples:v11 canBecomeFavorite:? hidden:?];
  v2 = [HKDisplayTypePresentation alloc];
  v3 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:6 secondaryValue:3 detailChart:9 singleDailyValue:0];
  LOBYTE(v12) = 0;
  v4 = MEMORY[0x1E695E0F8];
  v5 = [(HKDisplayTypePresentation *)v2 initWithDefaultConfiguration:v3 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v12 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  v6 = [[HKDisplayTypeLocalization alloc] initWithDisplayNameKey:@"BLEEDING_AFTER_PREGNANCY" labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v4];
  v7 = [HKDisplayType alloc];
  v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:314];
  v9 = [(HKDisplayType *)v7 initWithDisplayTypeIdentifier:314 categoryIdentifier:8 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v8 behavior:v1 presentation:v5 localization:v6 chartingRules:v0 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  return v9;
}

void sub_1C396BF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id InternalSettingsTapGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_1C396C578(a1, v17);
  v7 = v18;
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v17, v18);
    v9 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_1C3D20A44();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v12 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_initWithTarget_action_, v12, a2);
  swift_unknownObjectRelease();
  v14 = v13;
  [v14 setNumberOfTapsRequired_];
  [v14 setDelegate_];

  sub_1C396C69C(a1);
  return v14;
}

void sub_1C396C43C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C396C48C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C3D20A24();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C396C4D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C396C528(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C396C578(uint64_t a1, uint64_t a2)
{
  sub_1C396C43C(0, &qword_1EC0810F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C396C69C(uint64_t a1)
{
  sub_1C396C43C(0, &qword_1EC0810F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HKUIJoinStringsForAutomationIdentifier(void *a1)
{
  v1 = [a1 componentsJoinedByString:@"."];
  if ([v1 containsString:@"UIA.Health"])
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"UIA.Health", v1];
  }

  v3 = v2;

  return v3;
}

double HKCollectionViewLayoutDefaultInterItemSpacingForWidthDesignation(uint64_t a1)
{
  result = 10.0;
  if ((a1 - 3) <= 3)
  {
    return dbl_1C3D5DAE8[a1 - 3];
  }

  return result;
}

__CFString *HKDisplayTypeIdentifierToString(unint64_t a1)
{
  if (a1 > 0x155)
  {
    return 0;
  }

  else
  {
    return off_1E81BBDC8[a1];
  }
}

id HKHealthUIFrameworkBundle()
{
  v0 = HKHealthUIFrameworkBundle___ClassBundle;
  if (!HKHealthUIFrameworkBundle___ClassBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = HKHealthUIFrameworkBundle___ClassBundle;
    HKHealthUIFrameworkBundle___ClassBundle = v1;

    v0 = HKHealthUIFrameworkBundle___ClassBundle;
  }

  return v0;
}

__CFString *HKDisplayCategoryIdentifierToString(uint64_t a1)
{
  if ((a1 - 1) > 0x1E)
  {
    return 0;
  }

  else
  {
    return off_1E81BB928[a1 - 1];
  }
}

id HKMostRecentSampleEndDateText(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if ([v6 isDateInToday:v5])
    {
      if (a3)
      {
        v8 = 36;
      }

      else
      {
        v8 = 27;
      }
    }

    else if ([v7 isDateInYesterday:v5])
    {
      v8 = 36;
    }

    else
    {
      v10 = [MEMORY[0x1E695DEE8] currentCalendar];
      v11 = [MEMORY[0x1E695DF00] date];
      v12 = [v10 component:4 fromDate:v11];

      v13 = [MEMORY[0x1E695DEE8] currentCalendar];
      v14 = [v13 component:4 fromDate:v5];

      if (v14 == v12)
      {
        v8 = 12;
      }

      else
      {
        v8 = 7;
      }
    }

    v9 = HKLocalizedStringForDateAndTemplateWithFormattingContext(v5, v8, 2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t UITraitCollection.widthDesignation.getter()
{
  sub_1C396DDFC();
  sub_1C396DEC8(&qword_1EC080E50);
  sub_1C3D20604();
  return v1;
}

unint64_t sub_1C396DDFC()
{
  result = qword_1EC080FB0;
  if (!qword_1EC080FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080FB0);
  }

  return result;
}

uint64_t sub_1C396DEC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWidthDesignation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C396DF78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C396DFC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C396E018(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C396E068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1C396E0C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void UIViewController.hk_updateNavigationBarMargins(for:)()
{
  v1 = HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 hk:v1 safeAreaAdjustedEdgeInsets:{v3, v5, v7}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v0 navigationItem];
    [v18 largeTitleInsets];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    if (v11 != v20 || v13 != v22 || v15 != v24 || v17 != v26)
    {
      v30 = [v0 navigationItem];
      [v30 setLargeTitleInsets_];

      v31 = [v0 navigationController];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 navigationBar];

        [v33 setNeedsLayout];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id HKLocalizedStringForDateAndTemplateWithFormattingContext(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = HKDateFormatterFromTemplate(a2);
  v7 = [v6 formattingContext];
  if (v7 == a3)
  {
    v8 = [v6 stringFromDate:v5];
  }

  else
  {
    v9 = v7;
    [v6 setFormattingContext:a3];
    v8 = [v6 stringFromDate:v5];
    [v6 setFormattingContext:v9];
  }

  return v8;
}

void UICollectionViewController.hk_updateCollectionViewMargins(for:)()
{
  v1 = HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  [v8 directionalLayoutMargins];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (v1 != v11 || v3 != v13 || v5 != v15 || v7 != v17)
  {
    v21 = [v0 collectionView];
    if (v21)
    {
      v22 = v21;
      [v21 setDirectionalLayoutMargins_];

      return;
    }

LABEL_18:
    __break(1u);
  }
}

id HKDateFormatterFromTemplate(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v2 = &__block_literal_global_695;
      goto LABEL_73;
    case 1:
      v2 = &__block_literal_global_700;
      goto LABEL_73;
    case 2:
      if (CUIKCurrentLocaleRequiresUnabbrevatedMonthNames())
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    case 3:
LABEL_29:
      v6 = _GenerateDateFormatterShortMonthHeader();
      goto LABEL_83;
    case 4:
      v3 = _GenerateDateFormatterMonthUltraShort___formatter;
      if (!_GenerateDateFormatterMonthUltraShort___formatter)
      {
        v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v12 = _GenerateDateFormatterMonthUltraShort___formatter;
        _GenerateDateFormatterMonthUltraShort___formatter = v11;

        [_GenerateDateFormatterMonthUltraShort___formatter setLocalizedDateFormatFromTemplate:@"LLLLL"];
        v3 = _GenerateDateFormatterMonthUltraShort___formatter;
      }

      goto LABEL_82;
    case 5:
LABEL_28:
      v6 = _GenerateDateFormatterLongMonthHeader();
      goto LABEL_83;
    case 6:
      v2 = &__block_literal_global_711;
      goto LABEL_73;
    case 7:
      v2 = &__block_literal_global_713;
      goto LABEL_73;
    case 8:
      v2 = &__block_literal_global_715;
      goto LABEL_73;
    case 9:
      v2 = &__block_literal_global_717;
      goto LABEL_73;
    case 10:
      if (_GenerateDateFormatterLongMonthDateYear_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_11();
      }

      v3 = _GenerateDateFormatterLongMonthDateYear___dateFormatter;
      goto LABEL_82;
    case 11:
      if (_GenerateDateFormatterLongMonthDateYearInSentence_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_10();
      }

      v3 = _GenerateDateFormatterLongMonthDateYearInSentence___dateFormatter;
      goto LABEL_82;
    case 12:
      v2 = &__block_literal_global_719;
      goto LABEL_73;
    case 13:
      v2 = &__block_literal_global_721;
      goto LABEL_73;
    case 14:
      v2 = &__block_literal_global_723;
      goto LABEL_73;
    case 15:
      v2 = &__block_literal_global_725;
      goto LABEL_73;
    case 16:
      v3 = _GenerateDateFormatterDate___formatter;
      if (!_GenerateDateFormatterDate___formatter)
      {
        v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v5 = _GenerateDateFormatterDate___formatter;
        _GenerateDateFormatterDate___formatter = v4;

        [_GenerateDateFormatterDate___formatter setLocalizedDateFormatFromTemplate:@"d"];
        v3 = _GenerateDateFormatterDate___formatter;
      }

      goto LABEL_82;
    case 17:
      v3 = _GenerateDateFormatterDateDay___formatter;
      if (!_GenerateDateFormatterDateDay___formatter)
      {
        v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v8 = _GenerateDateFormatterDateDay___formatter;
        _GenerateDateFormatterDateDay___formatter = v7;

        [_GenerateDateFormatterDateDay___formatter setLocalizedDateFormatFromTemplate:@"d ccc"];
        v3 = _GenerateDateFormatterDateDay___formatter;
      }

      goto LABEL_82;
    case 18:
      v3 = _GenerateDateFormatterDay___formatter;
      if (!_GenerateDateFormatterDay___formatter)
      {
        v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v18 = _GenerateDateFormatterDay___formatter;
        _GenerateDateFormatterDay___formatter = v17;

        [_GenerateDateFormatterDay___formatter setLocalizedDateFormatFromTemplate:@"ccc"];
        v3 = _GenerateDateFormatterDay___formatter;
      }

      goto LABEL_82;
    case 19:
      v3 = _GenerateDateFormatterLongDay___formatter;
      if (!_GenerateDateFormatterLongDay___formatter)
      {
        v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v20 = _GenerateDateFormatterLongDay___formatter;
        _GenerateDateFormatterLongDay___formatter = v19;

        [_GenerateDateFormatterLongDay___formatter setLocalizedDateFormatFromTemplate:@"cccc"];
        v3 = _GenerateDateFormatterLongDay___formatter;
      }

      goto LABEL_82;
    case 20:
      v3 = _GenerateDateFormatterDayUltraShort___formatter;
      if (!_GenerateDateFormatterDayUltraShort___formatter)
      {
        v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v10 = _GenerateDateFormatterDayUltraShort___formatter;
        _GenerateDateFormatterDayUltraShort___formatter = v9;

        [_GenerateDateFormatterDayUltraShort___formatter setLocalizedDateFormatFromTemplate:@"ccccc"];
        v3 = _GenerateDateFormatterDayUltraShort___formatter;
      }

      goto LABEL_82;
    case 21:
      v3 = _GenerateDateFormatterLongDayDate___formatter;
      if (!_GenerateDateFormatterLongDayDate___formatter)
      {
        v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v14 = _GenerateDateFormatterLongDayDate___formatter;
        _GenerateDateFormatterLongDayDate___formatter = v13;

        v15 = _GenerateDateFormatterLongDayDate___formatter;
        v16 = CPDateFormatStringForFormatType();
        [v15 setLocalizedDateFormatFromTemplate:v16];

        v3 = _GenerateDateFormatterLongDayDate___formatter;
      }

      goto LABEL_82;
    case 22:
      if (_CPTimeFormatIs24HourMode())
      {
        goto LABEL_65;
      }

      v2 = &__block_literal_global_742;
      goto LABEL_73;
    case 23:
      if (_CPTimeFormatIs24HourMode())
      {
        goto LABEL_72;
      }

      v2 = &__block_literal_global_752;
      goto LABEL_73;
    case 24:
      if (_CPTimeFormatIs24HourMode())
      {
        goto LABEL_72;
      }

      if (_GenerateDateFormatterHourShortAMPM_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_9();
      }

      v3 = _GenerateDateFormatterHourShortAMPM___dateFormatter;
      goto LABEL_82;
    case 25:
      if (_GenerateDateFormatterHourWithoutAMPM_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_8();
      }

      v3 = _GenerateDateFormatterHourWithoutAMPM___dateFormatter;
      goto LABEL_82;
    case 26:
LABEL_65:
      v2 = &__block_literal_global_747;
      goto LABEL_73;
    case 27:
LABEL_72:
      v2 = &__block_literal_global_757;
      goto LABEL_73;
    case 28:
      if (_GenerateDateFormatterHourMinuteWithoutAMPM_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_7();
      }

      v3 = _GenerateDateFormatterHourMinuteWithoutAMPM___dateFormatter;
      goto LABEL_82;
    case 29:
      v2 = &__block_literal_global_759;
      goto LABEL_73;
    case 30:
      if (_CPTimeFormatIs24HourMode())
      {
        goto LABEL_39;
      }

      v6 = _GenerateDateFormatterDayMonthDateHour();
      goto LABEL_83;
    case 31:
LABEL_39:
      v6 = _GenerateDateFormatterDayMonthDateHourMinute();
      goto LABEL_83;
    case 32:
      if (_GenerateDateFormatterLongDateLongTime_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_6();
      }

      v3 = _GenerateDateFormatterLongDateLongTime___dateFormatter;
      goto LABEL_82;
    case 33:
      if (_GenerateDateFormatterLongDateShortTime_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_5();
      }

      v3 = _GenerateDateFormatterLongDateShortTime___dateFormatter;
      goto LABEL_82;
    case 34:
      if (_GenerateDateFormatterLongMonthDateYearShortTime_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_4();
      }

      v3 = _GenerateDateFormatterLongMonthDateYearShortTime___dateFormatter;
      goto LABEL_82;
    case 35:
      if (_GenerateDateFormatterTodayHourMinute_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_3();
      }

      v3 = _GenerateDateFormatterTodayHourMinute___dateFormatter;
      goto LABEL_82;
    case 36:
      if (_GenerateDateFormatterToday_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_2();
      }

      v3 = _GenerateDateFormatterToday___dateFormatter;
      goto LABEL_82;
    case 37:
      if (_GenerateDateFormatterLongToday_onceToken != -1)
      {
        HKDateFormatterFromTemplate_cold_1();
      }

      v3 = _GenerateDateFormatterLongToday___dateFormatter;
LABEL_82:
      v6 = v3;
      goto LABEL_83;
    case 38:
      v2 = &__block_literal_global_764;
      goto LABEL_73;
    case 39:
      v2 = &__block_literal_global_769;
      goto LABEL_73;
    case 40:
      v2 = &__block_literal_global_774;
      goto LABEL_73;
    case 41:
      v2 = &__block_literal_global_779;
      goto LABEL_73;
    case 42:
      v2 = &__block_literal_global_784;
LABEL_73:
      v6 = _performNSDateFormatterInitializationBlock(v2);
LABEL_83:

      break;
    default:
      v6 = 0;

      break;
  }

  return v6;
}

id _performNSDateFormatterInitializationBlock(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&_formatterLock);
  v2 = v1[2](v1);

  os_unfair_lock_unlock(&_formatterLock);

  return v2;
}

id static UIContentSizeCategory.healthAccessibilitySizeThresholdForAdjustedLayout.getter()
{
  v0 = HKCollectionViewLayoutDefaultAccessibilitySizeThresholdForAdjustedLayout();

  return v0;
}

id HKFormattedStringFromValueForContextWithUnit(void *a1, void *a2, void *a3, void *a4, int a5, void *a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v14 hk_numberFormatterForUnit:v15 formattingContext:a7];
  }

  v20 = v19;
  if (a5)
  {
    v21 = [v16 displayRangeForDisplayType:v14];
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x1E696C348];
      [v13 doubleValue];
      v24 = [v23 quantityWithUnit:v15 doubleValue:?];
      v25 = [v22 maximum];
      v26 = [v22 minimum];
      v40 = v26;
      if ([v24 compare:v25] == 1)
      {
        v37 = v22;
        v38 = v25;
        v39 = v24;
        v27 = @"GREATER_THAN_%@";
        v28 = v25;
      }

      else
      {
        if ([v24 compare:v26] != -1)
        {
          v29 = 0;
          goto LABEL_12;
        }

        v37 = v22;
        v38 = v25;
        v39 = v24;
        v27 = @"LESS_THAN_%@";
        v28 = v26;
      }

      v30 = MEMORY[0x1E696AD98];
      [v28 doubleValueForUnit:v15];
      v31 = [v30 numberWithDouble:?];
      v32 = [v20 stringFromNumber:v31 displayType:v14 unitController:v16];

      v33 = MEMORY[0x1E696AEC0];
      v34 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v35 = [v34 localizedStringForKey:v27 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v29 = [v33 stringWithFormat:v35, v32];

      v25 = v38;
      v24 = v39;
      v22 = v37;
LABEL_12:

      if (v29)
      {
        goto LABEL_14;
      }
    }
  }

  v29 = [v20 stringFromNumber:v13 displayType:v14 unitController:v16];
LABEL_14:

  return v29;
}

id HKNumberFormatterWithDecimalPrecisionAndStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = HKNumberFormatterWithDecimalPrecisionAndStyle_styleFormatters;
  if (!HKNumberFormatterWithDecimalPrecisionAndStyle_styleFormatters)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = HKNumberFormatterWithDecimalPrecisionAndStyle_styleFormatters;
    HKNumberFormatterWithDecimalPrecisionAndStyle_styleFormatters = v7;

    v6 = HKNumberFormatterWithDecimalPrecisionAndStyle_styleFormatters;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [v6 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = HKNumberFormatterWithDecimalPrecisionAndStyle_styleFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v14 = [v10 objectForKeyedSubscript:v13];
  if (!v14)
  {
    v15 = _formatterWithDecimalPrecisionAndStyle(a1, 0, a3);
    v19[0] = v15;
    v16 = _formatterWithDecimalPrecisionAndStyle(a1, 1, a3);
    v19[1] = v16;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

    [v10 setObject:v14 forKeyedSubscript:v13];
  }

  v17 = [v14 objectAtIndexedSubscript:a2];

  return v17;
}

id _formatterWithDecimalPrecisionAndStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v6 setNumberStyle:a3];
  [v6 setMaximumFractionDigits:a1];
  if (a3 == 3)
  {
    [v6 setMultiplier:&unk_1F4381F30];
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

  else
  {
    v7 = 6;
  }

  [v6 setRoundingMode:v7];
LABEL_8:

  return v6;
}

id HKGenerateAttributedStringsWithUnitValue(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v11 = a2;
  v12 = a4;
  v13 = MEMORY[0x1E695DF70];
  v14 = a3;
  v15 = a1;
  v16 = [v13 array];
  if (a6)
  {
    v17 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = HKAttributedStringAttributesForFont(v14, v17);

  v20 = [v18 initWithString:v15 attributes:v19];
  [v16 addObject:v20];
  if (v11 && a5 >= 1)
  {
    v21 = [MEMORY[0x1E696AAB0] hk_attributedStringForSpacing:a5];
LABEL_8:
    if (a6)
    {
      v22 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
    }

    else
    {
      v22 = 0;
    }

    v23 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24 = HKAttributedStringAttributesForFont(v12, v22);
    v25 = [v23 initWithString:v11 attributes:v24];

    goto LABEL_12;
  }

  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
  if (v11)
  {
    goto LABEL_8;
  }

  v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F42FFBE0];
LABEL_12:
  [v16 addObject:v21];
  [v16 addObject:v25];

  return v16;
}

id HKAttributedStringAttributesForFont(void *a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = *MEMORY[0x1E69DB650];
      v15[0] = *MEMORY[0x1E69DB648];
      v15[1] = v6;
      v16[0] = v3;
      v16[1] = v4;
      v7 = MEMORY[0x1E695DF20];
      v8 = v16;
      v9 = v15;
      v10 = 2;
    }

    else
    {
      v13 = *MEMORY[0x1E69DB648];
      v14 = v3;
      v7 = MEMORY[0x1E695DF20];
      v8 = &v14;
      v9 = &v13;
      v10 = 1;
    }

    v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id HKUIJoinAttributedStringsWithFormatAndAttributes(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v19 = a3;
  v20 = v6;
  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v6 attributes:v19];
  v8 = [v5 count];
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%%ld$@", v10 + 1];
      v13 = [v7 string];
      v14 = [v13 rangeOfString:v12];
      v16 = v15;

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v5 objectAtIndexedSubscript:v10];
        [v7 replaceCharactersInRange:v14 withAttributedString:{v16, v17}];
      }

      ++v10;
    }

    while (v9 != v11);
  }

  return v7;
}

double HKUIOnePixel()
{
  result = *&HKUIOnePixel___onePixel;
  if (*&HKUIOnePixel___onePixel == 2.22507386e-308)
  {
    v1 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v1 scale];
    *&HKUIOnePixel___onePixel = 1.0 / v2;

    return *&HKUIOnePixel___onePixel;
  }

  return result;
}

uint64_t sub_1C3972418@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C3D20104();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C3972444(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3972464(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1C3972490(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C39724B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C39724D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3972518()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C3972558()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1C3C291F4();
  }
}

uint64_t sub_1C3972594()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C39725CC()
{
  sub_1C3C29314();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = sub_1C3D1E6F4();
  v6 = *(v15 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v14 = v3 | v7;
  v13 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v4;
  v10 = sub_1C3D1FE54();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v11(v9 + *(v2 + 44), v10);

  (*(v6 + 8))(v0 + v8, v15);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v14 | 7);
}

uint64_t sub_1C3972838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1C3C2E464(0, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1C3C2E464(0, &qword_1EC081380, MEMORY[0x1E6985838], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C39729BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1C3C2E464(0, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1C3C2E464(0, &qword_1EC081380, MEMORY[0x1E6985838], MEMORY[0x1E697DCC0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C3972B88@<X0>(void *a1@<X8>)
{
  result = sub_1C3D1F294();
  *a1 = v3;
  return result;
}

uint64_t sub_1C3972BDC(uint64_t a1, uint64_t a2)
{
  sub_1C3C2DA68(0, &qword_1EC0812E0, sub_1C3C2CE34, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3972C88()
{
  v1 = type metadata accessor for AccessoryCircularSymbolDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[10];
  sub_1C3C2CC98(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C3D1FEA4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[11];
  sub_1C3C2CCCC(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C3D1FEB4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_1C3C2ECC8(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C3972EB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3972EE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C3972F30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C3972F98()
{
  sub_1C3D1F1A4();
  sub_1C3C32678();
  return swift_getWitnessTable();
}

uint64_t sub_1C3972FFC()
{
  sub_1C3C3261C();
  sub_1C3C32C0C(&qword_1EC0858B0, sub_1C3C3261C);
  sub_1C3C326CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C3973098()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C39730D8()
{
  v1 = sub_1C3D1E1E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C39731B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3973234@<X0>(uint64_t *a1@<X8>)
{
  sub_1C3D1DD84();
  result = sub_1C3D1DD74();
  *a1 = result;
  return result;
}

uint64_t sub_1C3973294()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C39732CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

__n128 sub_1C397336C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C3973388()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C39733C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C39733F8()
{
  v1 = *(v0 + 32);
  v2 = sub_1C3D1E444();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);

  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1C397356C@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.widthDesignation.getter();
  *a1 = result;
  return result;
}

__n128 sub_1C39735DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C39735E8@<X0>(void *a1@<X8>)
{
  sub_1C3C432FC();
  result = sub_1C3D1F3C4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C3973684()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C39736D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C397370C()
{
  MEMORY[0x1C69322D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3973744()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3973794()
{
  sub_1C3C4C050();
  sub_1C3C4C140();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C39737EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1C3C4C410();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1C3973898(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C3C4C410();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C397393C()
{
  v1 = (type metadata accessor for ClinicalAccountBrandLogoView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_0(v0 + v3 + 8);
  v5 = v1[8];
  sub_1C3C4C410();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C3973A38@<X0>(void *a1@<X8>)
{
  result = sub_1C3D1F234();
  *a1 = v3;
  return result;
}

uint64_t sub_1C3973AE4()
{
  sub_1C3C2ECC8(*(v0 + 32), *(v0 + 40));

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C3973B38()
{
  sub_1C3D1F134();
  sub_1C3D1F1A4();
  sub_1C3C565BC();
  return swift_getWitnessTable();
}

uint64_t sub_1C3973BA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1C3973BF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C3973C4C()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C3973CA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C3973CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C3C617FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1C3973D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C3C617FC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }
}

uint64_t sub_1C3973E54()
{
  type metadata accessor for AccessoryRectangularTitleView();
  swift_getTupleTypeMetadata3();
  sub_1C3D1FD34();
  swift_getWitnessTable();
  sub_1C3D1FC84();
  sub_1C3D1F1A4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C3973F44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1C3C657F4(0, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1C3974024(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C3C657F4(0, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C39740F8()
{
  v1 = (type metadata accessor for AccessoryRectangularTitleView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  sub_1C3C657F4(0, &qword_1EC081398, MEMORY[0x1E6985778], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C3D1FEA4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C3974248@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C3D1F384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C39742AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C3D1F274();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C3974304(uint64_t a1)
{
  sub_1C3C65960();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3974360(uint64_t a1, uint64_t a2)
{
  sub_1C3C656EC(0, &qword_1EC081038, sub_1C3C65960, MEMORY[0x1E697CBE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C39743F4(uint64_t a1)
{
  sub_1C3C656EC(0, &qword_1EC081038, sub_1C3C65960, MEMORY[0x1E697CBE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C39744F8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1C3C6EEA4;
  a2[1] = v5;
}

uint64_t sub_1C3974568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C3C6F2D0(0, &qword_1EC086490, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1C3974658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C3C6F2D0(0, &qword_1EC086490, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}