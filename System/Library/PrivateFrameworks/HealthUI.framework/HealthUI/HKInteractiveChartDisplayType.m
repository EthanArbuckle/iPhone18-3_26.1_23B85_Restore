@interface HKInteractiveChartDisplayType
- (HKInteractiveChartDisplayType)initWithBaseDisplayType:(id)a3 valueFormatter:(id)a4 dataTypeCode:(int64_t)a5 seriesForTimeScopeMapping:(id)a6;
- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)a3 baseDisplayType:(id)a4 dataTypeCode:(int64_t)a5;
- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)a3 baseDisplayType:(id)a4 valueFormatter:(id)a5 dataTypeCode:(int64_t)a6;
- (UIColor)color;
- (id)_initWithDisplayName:(id)a3 unitDisplayNameOverrides:(id)a4 localizationTableOverride:(id)a5 chartingRules:(id)a6 unitName:(id)a7 valueFormatter:(id)a8 dataTypeCode:(int64_t)a9 baseDisplayType:(id)a10 mainGraphSeries:(id)a11 seriesForTimeScopeMapping:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)graphSeriesForTimeScope:(int64_t)a3;
- (id)hk_interactiveChartsFormatterForTimeScope:(int64_t)a3;
- (int64_t)_internalDisplayTypeIdentifier;
@end

@implementation HKInteractiveChartDisplayType

- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)a3 baseDisplayType:(id)a4 dataTypeCode:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 localization];
  v10 = [v9 displayName];
  v11 = [v7 localization];
  v12 = [v11 unitNameKeyOverrides];
  v13 = [v7 localization];
  v14 = [v13 localizationTableNameOverride];
  v15 = [v7 chartingRules];
  v16 = [(HKInteractiveChartDisplayType *)self _initWithDisplayName:v10 unitDisplayNameOverrides:v12 localizationTableOverride:v14 chartingRules:v15 unitName:&stru_1F42FFBE0 valueFormatter:0 dataTypeCode:a5 baseDisplayType:v7 mainGraphSeries:v8 seriesForTimeScopeMapping:0];

  return v16;
}

- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)a3 baseDisplayType:(id)a4 valueFormatter:(id)a5 dataTypeCode:(int64_t)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v21 = [v9 localization];
  v11 = [v21 displayName];
  v12 = [v9 localization];
  v13 = [v12 unitNameKeyOverrides];
  v14 = [v9 localization];
  v15 = [v14 localizationTableNameOverride];
  v16 = [v9 chartingRules];
  v17 = [(HKInteractiveChartDisplayType *)self _initWithDisplayName:v11 unitDisplayNameOverrides:v13 localizationTableOverride:v15 chartingRules:v16 unitName:&stru_1F42FFBE0 valueFormatter:v8 dataTypeCode:a6 baseDisplayType:v9 mainGraphSeries:v10 seriesForTimeScopeMapping:0];

  return v17;
}

- (HKInteractiveChartDisplayType)initWithBaseDisplayType:(id)a3 valueFormatter:(id)a4 dataTypeCode:(int64_t)a5 seriesForTimeScopeMapping:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v21 = [v10 localization];
  v11 = [v21 displayName];
  v12 = [v10 localization];
  v13 = [v12 unitNameKeyOverrides];
  v14 = [v10 localization];
  v15 = [v14 localizationTableNameOverride];
  v16 = [v10 chartingRules];
  v17 = [(HKInteractiveChartDisplayType *)self _initWithDisplayName:v11 unitDisplayNameOverrides:v13 localizationTableOverride:v15 chartingRules:v16 unitName:&stru_1F42FFBE0 valueFormatter:v9 dataTypeCode:a5 baseDisplayType:v10 mainGraphSeries:0 seriesForTimeScopeMapping:v8];

  return v17;
}

- (id)_initWithDisplayName:(id)a3 unitDisplayNameOverrides:(id)a4 localizationTableOverride:(id)a5 chartingRules:(id)a6 unitName:(id)a7 valueFormatter:(id)a8 dataTypeCode:(int64_t)a9 baseDisplayType:(id)a10 mainGraphSeries:(id)a11 seriesForTimeScopeMapping:(id)a12
{
  v78 = *MEMORY[0x1E69E9840];
  v70 = a3;
  v71 = a4;
  v18 = a5;
  v19 = a6;
  v62 = a7;
  v69 = a7;
  v63 = a8;
  v68 = a8;
  v20 = a10;
  v66 = a11;
  v65 = a12;
  if (!v19)
  {
    v19 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1];
  }

  v21 = [HKDisplayTypeBehavior alloc];
  v22 = [v20 behavior];
  LODWORD(v56) = 65537;
  v23 = -[HKDisplayTypeBehavior initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:](v21, "initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:", 0, 0, 1, 1, 0, [v22 chartsRelativeData], v56);

  v24 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  v25 = [HKDisplayTypePresentation alloc];
  v26 = v25;
  v67 = v20;
  v64 = v24;
  if (v20)
  {
    v27 = [v20 presentation];
    [v27 scaleFactor];
    LOBYTE(v57) = 0;
    v28 = v24;
    v29 = MEMORY[0x1E695E0F8];
    v30 = [(HKDisplayTypePresentation *)v26 initWithDefaultConfiguration:v28 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:v57 isCriticalForAutoscale:0 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:?];

    v31 = [HKDisplayTypeLocalization alloc];
    [v20 localization];
    v32 = v23;
    v34 = v33 = v19;
    v35 = [v34 displayNameKey];
    if (v71)
    {
      v36 = v71;
    }

    else
    {
      v36 = v29;
    }

    v37 = [(HKDisplayTypeLocalization *)v31 initWithDisplayNameKey:v35 labelDisplayNameKey:0 localizationTableNameOverride:v18 localizedKeySuffix:0 unitNameKeyOverrides:v36];

    v19 = v33;
    v23 = v32;
    v38 = v70;
  }

  else
  {
    LOBYTE(v57) = 0;
    v39 = MEMORY[0x1E695E0F8];
    v30 = [(HKDisplayTypePresentation *)v25 initWithDefaultConfiguration:v24 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v57 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];
    v40 = [HKDisplayTypeLocalization alloc];
    v38 = v70;
    if (v71)
    {
      v41 = v71;
    }

    else
    {
      v41 = v39;
    }

    v37 = [(HKDisplayTypeLocalization *)v40 initWithDisplayNameKey:v70 labelDisplayNameKey:0 localizationTableNameOverride:v18 localizedKeySuffix:0 unitNameKeyOverrides:v41];
  }

  v42 = [(HKInteractiveChartDisplayType *)self _internalDisplayTypeIdentifier];
  v43 = [MEMORY[0x1E696C2E0] dataTypeWithCode:a9];
  v76.receiver = self;
  v76.super_class = HKInteractiveChartDisplayType;
  v44 = [(HKDisplayType *)&v76 initWithDisplayTypeIdentifier:v42 categoryIdentifier:0 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v43 behavior:v23 presentation:v30 localization:v37 chartingRules:v19 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  if (v44)
  {
    v58 = v30;
    v59 = v23;
    v60 = v19;
    objc_storeStrong(&v44->_specifiedDisplayName, a3);
    objc_storeStrong(&v44->_specifiedUnitName, v62);
    objc_storeStrong(&v44->_specifiedValueFormatter, v63);
    objc_storeStrong(&v44->_baseDisplayType, a10);
    objc_storeStrong(&v44->_mainGraphSeries, a11);
    objc_storeStrong(&v44->_seriesForTimeScopeMapping, a12);
    v45 = [(HKDisplayType *)v44 presentation];
    -[HKGraphSeries setIsCriticalForAutoscale:](v44->_mainGraphSeries, "setIsCriticalForAutoscale:", [v45 isCriticalForAutoscale]);

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v46 = v44->_seriesForTimeScopeMapping;
    v47 = [(NSDictionary *)v46 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v73;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v73 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v72 + 1) + 8 * i);
          v52 = [(HKDisplayType *)v44 presentation];
          v53 = [v52 isCriticalForAutoscale];
          v54 = [(NSDictionary *)v44->_seriesForTimeScopeMapping objectForKeyedSubscript:v51];
          [v54 setIsCriticalForAutoscale:v53];
        }

        v48 = [(NSDictionary *)v46 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v48);
    }

    v38 = v70;
    v23 = v59;
    v19 = v60;
    v30 = v58;
  }

  return v44;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = HKInteractiveChartDisplayType;
  v4 = [(HKDisplayType *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_specifiedDisplayName copy];
  v6 = *(v4 + 19);
  *(v4 + 19) = v5;

  v7 = [(NSString *)self->_specifiedUnitName copy];
  v8 = *(v4 + 20);
  *(v4 + 20) = v7;

  v9 = [(NSDictionary *)self->_seriesForTimeScopeMapping copy];
  v10 = *(v4 + 22);
  *(v4 + 22) = v9;

  objc_storeStrong(v4 + 21, self->_specifiedValueFormatter);
  objc_storeStrong(v4 + 18, self->_mainGraphSeries);
  objc_storeStrong(v4 + 17, self->_baseDisplayType);
  objc_storeStrong(v4 + 16, self->_color);
  return v4;
}

- (id)graphSeriesForTimeScope:(int64_t)a3
{
  v5 = [(HKInteractiveChartDisplayType *)self mainGraphSeries];

  if (v5)
  {
    v6 = [(HKInteractiveChartDisplayType *)self mainGraphSeries];
  }

  else
  {
    v7 = [(HKInteractiveChartDisplayType *)self seriesForTimeScopeMapping];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v6 = [v7 objectForKey:v8];
  }

  return v6;
}

- (UIColor)color
{
  color = self->_color;
  if (color)
  {
    v3 = color;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HKInteractiveChartDisplayType;
    v3 = [(HKDisplayType *)&v5 color];
  }

  return v3;
}

- (id)hk_interactiveChartsFormatterForTimeScope:(int64_t)a3
{
  specifiedValueFormatter = self->_specifiedValueFormatter;
  if (specifiedValueFormatter || (baseDisplayType = self->_baseDisplayType) == 0)
  {
    v4 = specifiedValueFormatter;
  }

  else
  {
    v4 = [(HKDisplayType *)baseDisplayType hk_interactiveChartsFormatterForTimeScope:a3];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HKInteractiveChartDisplayType *)self displayName];
  v4 = [v2 stringWithFormat:@"HKInteractiveChartInternalDisplayType(%@)", v3];

  return v4;
}

- (int64_t)_internalDisplayTypeIdentifier
{
  os_unfair_lock_lock(&_internalDisplayTypeIdentifier__identifierLock);
  if (_internalDisplayTypeIdentifier__currentIdentifier)
  {
    v2 = _internalDisplayTypeIdentifier__currentIdentifier;
  }

  else
  {
    v2 = 342;
  }

  _internalDisplayTypeIdentifier__currentIdentifier = v2 + 1;
  os_unfair_lock_unlock(&_internalDisplayTypeIdentifier__identifierLock);
  return v2;
}

@end