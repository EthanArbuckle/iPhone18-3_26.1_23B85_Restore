@interface HKInteractiveChartDisplayType
- (HKInteractiveChartDisplayType)initWithBaseDisplayType:(id)type valueFormatter:(id)formatter dataTypeCode:(int64_t)code seriesForTimeScopeMapping:(id)mapping;
- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)series baseDisplayType:(id)type dataTypeCode:(int64_t)code;
- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)series baseDisplayType:(id)type valueFormatter:(id)formatter dataTypeCode:(int64_t)code;
- (UIColor)color;
- (id)_initWithDisplayName:(id)name unitDisplayNameOverrides:(id)overrides localizationTableOverride:(id)override chartingRules:(id)rules unitName:(id)unitName valueFormatter:(id)formatter dataTypeCode:(int64_t)code baseDisplayType:(id)self0 mainGraphSeries:(id)self1 seriesForTimeScopeMapping:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)graphSeriesForTimeScope:(int64_t)scope;
- (id)hk_interactiveChartsFormatterForTimeScope:(int64_t)scope;
- (int64_t)_internalDisplayTypeIdentifier;
@end

@implementation HKInteractiveChartDisplayType

- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)series baseDisplayType:(id)type dataTypeCode:(int64_t)code
{
  typeCopy = type;
  seriesCopy = series;
  localization = [typeCopy localization];
  displayName = [localization displayName];
  localization2 = [typeCopy localization];
  unitNameKeyOverrides = [localization2 unitNameKeyOverrides];
  localization3 = [typeCopy localization];
  localizationTableNameOverride = [localization3 localizationTableNameOverride];
  chartingRules = [typeCopy chartingRules];
  v16 = [(HKInteractiveChartDisplayType *)self _initWithDisplayName:displayName unitDisplayNameOverrides:unitNameKeyOverrides localizationTableOverride:localizationTableNameOverride chartingRules:chartingRules unitName:&stru_1F42FFBE0 valueFormatter:0 dataTypeCode:code baseDisplayType:typeCopy mainGraphSeries:seriesCopy seriesForTimeScopeMapping:0];

  return v16;
}

- (HKInteractiveChartDisplayType)initWithGraphSeries:(id)series baseDisplayType:(id)type valueFormatter:(id)formatter dataTypeCode:(int64_t)code
{
  formatterCopy = formatter;
  typeCopy = type;
  seriesCopy = series;
  localization = [typeCopy localization];
  displayName = [localization displayName];
  localization2 = [typeCopy localization];
  unitNameKeyOverrides = [localization2 unitNameKeyOverrides];
  localization3 = [typeCopy localization];
  localizationTableNameOverride = [localization3 localizationTableNameOverride];
  chartingRules = [typeCopy chartingRules];
  v17 = [(HKInteractiveChartDisplayType *)self _initWithDisplayName:displayName unitDisplayNameOverrides:unitNameKeyOverrides localizationTableOverride:localizationTableNameOverride chartingRules:chartingRules unitName:&stru_1F42FFBE0 valueFormatter:formatterCopy dataTypeCode:code baseDisplayType:typeCopy mainGraphSeries:seriesCopy seriesForTimeScopeMapping:0];

  return v17;
}

- (HKInteractiveChartDisplayType)initWithBaseDisplayType:(id)type valueFormatter:(id)formatter dataTypeCode:(int64_t)code seriesForTimeScopeMapping:(id)mapping
{
  mappingCopy = mapping;
  formatterCopy = formatter;
  typeCopy = type;
  localization = [typeCopy localization];
  displayName = [localization displayName];
  localization2 = [typeCopy localization];
  unitNameKeyOverrides = [localization2 unitNameKeyOverrides];
  localization3 = [typeCopy localization];
  localizationTableNameOverride = [localization3 localizationTableNameOverride];
  chartingRules = [typeCopy chartingRules];
  v17 = [(HKInteractiveChartDisplayType *)self _initWithDisplayName:displayName unitDisplayNameOverrides:unitNameKeyOverrides localizationTableOverride:localizationTableNameOverride chartingRules:chartingRules unitName:&stru_1F42FFBE0 valueFormatter:formatterCopy dataTypeCode:code baseDisplayType:typeCopy mainGraphSeries:0 seriesForTimeScopeMapping:mappingCopy];

  return v17;
}

- (id)_initWithDisplayName:(id)name unitDisplayNameOverrides:(id)overrides localizationTableOverride:(id)override chartingRules:(id)rules unitName:(id)unitName valueFormatter:(id)formatter dataTypeCode:(int64_t)code baseDisplayType:(id)self0 mainGraphSeries:(id)self1 seriesForTimeScopeMapping:(id)self2
{
  v78 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  overridesCopy = overrides;
  overrideCopy = override;
  rulesCopy = rules;
  unitNameCopy = unitName;
  unitNameCopy2 = unitName;
  formatterCopy = formatter;
  formatterCopy2 = formatter;
  typeCopy = type;
  seriesCopy = series;
  mappingCopy = mapping;
  if (!rulesCopy)
  {
    rulesCopy = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:1];
  }

  v21 = [HKDisplayTypeBehavior alloc];
  behavior = [typeCopy behavior];
  LODWORD(v56) = 65537;
  v23 = -[HKDisplayTypeBehavior initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:](v21, "initWithStatisticsMergeStrategy:preferredCalendaryDayAlignment:allowEditView:allowsSourceReordering:unitPreferenceChangeConfirmation:chartsRelativeData:appearsInDataTypeSearch:supportsAssociatedSamples:canBecomeFavorite:hidden:", 0, 0, 1, 1, 0, [behavior chartsRelativeData], v56);

  v24 = [[HKDisplayTypePresentationConfiguration alloc] initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
  v25 = [HKDisplayTypePresentation alloc];
  v26 = v25;
  v67 = typeCopy;
  v64 = v24;
  if (typeCopy)
  {
    presentation = [typeCopy presentation];
    [presentation scaleFactor];
    LOBYTE(v57) = 0;
    v28 = v24;
    v29 = MEMORY[0x1E695E0F8];
    v30 = [(HKDisplayTypePresentation *)v26 initWithDefaultConfiguration:v28 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:v57 isCriticalForAutoscale:0 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:?];

    v31 = [HKDisplayTypeLocalization alloc];
    [typeCopy localization];
    v32 = v23;
    v34 = v33 = rulesCopy;
    displayNameKey = [v34 displayNameKey];
    if (overridesCopy)
    {
      v36 = overridesCopy;
    }

    else
    {
      v36 = v29;
    }

    v37 = [(HKDisplayTypeLocalization *)v31 initWithDisplayNameKey:displayNameKey labelDisplayNameKey:0 localizationTableNameOverride:overrideCopy localizedKeySuffix:0 unitNameKeyOverrides:v36];

    rulesCopy = v33;
    v23 = v32;
    v38 = nameCopy;
  }

  else
  {
    LOBYTE(v57) = 0;
    v39 = MEMORY[0x1E695E0F8];
    v30 = [(HKDisplayTypePresentation *)v25 initWithDefaultConfiguration:v24 configurationOverrides:MEMORY[0x1E695E0F8] scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v57 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];
    v40 = [HKDisplayTypeLocalization alloc];
    v38 = nameCopy;
    if (overridesCopy)
    {
      v41 = overridesCopy;
    }

    else
    {
      v41 = v39;
    }

    v37 = [(HKDisplayTypeLocalization *)v40 initWithDisplayNameKey:nameCopy labelDisplayNameKey:0 localizationTableNameOverride:overrideCopy localizedKeySuffix:0 unitNameKeyOverrides:v41];
  }

  _internalDisplayTypeIdentifier = [(HKInteractiveChartDisplayType *)self _internalDisplayTypeIdentifier];
  v43 = [MEMORY[0x1E696C2E0] dataTypeWithCode:code];
  v76.receiver = self;
  v76.super_class = HKInteractiveChartDisplayType;
  v44 = [(HKDisplayType *)&v76 initWithDisplayTypeIdentifier:_internalDisplayTypeIdentifier categoryIdentifier:0 secondaryCategoryIdentifiers:MEMORY[0x1E695E0F0] objectType:v43 behavior:v23 presentation:v30 localization:v37 chartingRules:rulesCopy defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];

  if (v44)
  {
    v58 = v30;
    v59 = v23;
    v60 = rulesCopy;
    objc_storeStrong(&v44->_specifiedDisplayName, name);
    objc_storeStrong(&v44->_specifiedUnitName, unitNameCopy);
    objc_storeStrong(&v44->_specifiedValueFormatter, formatterCopy);
    objc_storeStrong(&v44->_baseDisplayType, type);
    objc_storeStrong(&v44->_mainGraphSeries, series);
    objc_storeStrong(&v44->_seriesForTimeScopeMapping, mapping);
    presentation2 = [(HKDisplayType *)v44 presentation];
    -[HKGraphSeries setIsCriticalForAutoscale:](v44->_mainGraphSeries, "setIsCriticalForAutoscale:", [presentation2 isCriticalForAutoscale]);

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
          presentation3 = [(HKDisplayType *)v44 presentation];
          isCriticalForAutoscale = [presentation3 isCriticalForAutoscale];
          v54 = [(NSDictionary *)v44->_seriesForTimeScopeMapping objectForKeyedSubscript:v51];
          [v54 setIsCriticalForAutoscale:isCriticalForAutoscale];
        }

        v48 = [(NSDictionary *)v46 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v48);
    }

    v38 = nameCopy;
    v23 = v59;
    rulesCopy = v60;
    v30 = v58;
  }

  return v44;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = HKInteractiveChartDisplayType;
  v4 = [(HKDisplayType *)&v12 copyWithZone:zone];
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

- (id)graphSeriesForTimeScope:(int64_t)scope
{
  mainGraphSeries = [(HKInteractiveChartDisplayType *)self mainGraphSeries];

  if (mainGraphSeries)
  {
    mainGraphSeries2 = [(HKInteractiveChartDisplayType *)self mainGraphSeries];
  }

  else
  {
    seriesForTimeScopeMapping = [(HKInteractiveChartDisplayType *)self seriesForTimeScopeMapping];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
    mainGraphSeries2 = [seriesForTimeScopeMapping objectForKey:v8];
  }

  return mainGraphSeries2;
}

- (UIColor)color
{
  color = self->_color;
  if (color)
  {
    color = color;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = HKInteractiveChartDisplayType;
    color = [(HKDisplayType *)&v5 color];
  }

  return color;
}

- (id)hk_interactiveChartsFormatterForTimeScope:(int64_t)scope
{
  specifiedValueFormatter = self->_specifiedValueFormatter;
  if (specifiedValueFormatter || (baseDisplayType = self->_baseDisplayType) == 0)
  {
    v4 = specifiedValueFormatter;
  }

  else
  {
    v4 = [(HKDisplayType *)baseDisplayType hk_interactiveChartsFormatterForTimeScope:scope];
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  displayName = [(HKInteractiveChartDisplayType *)self displayName];
  v4 = [v2 stringWithFormat:@"HKInteractiveChartInternalDisplayType(%@)", displayName];

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