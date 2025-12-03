@interface HKDisplayTypeChartingRules
+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)style axisScalingRule:(id)rule;
+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)style chartStyleForTimeScopes:(id)scopes axisScalingRule:(id)rule compactAxisScalingRule:(id)scalingRule preferredTimeScope:(int64_t)scope chartingOptions:(unint64_t)options;
+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)style chartStyleForTimeScopes:(id)scopes axisScalingRule:(id)rule preferredTimeScope:(int64_t)scope chartingOptions:(unint64_t)options;
- (BOOL)lineChartExtendFirstValueForTimeScope:(int64_t)scope;
- (BOOL)lineChartExtendLastValueForTimeScope:(int64_t)scope;
- (BOOL)lineChartFlatLastValueForTimeScope:(int64_t)scope;
- (BOOL)lineChartUsesPointMarkerImageForTimeScope:(int64_t)scope;
- (BOOL)lineChartUsesValueAxisAnnotationForTimeScope:(int64_t)scope;
- (HKDisplayTypeChartingRules)initWithDefaultChartStyle:(int64_t)style chartingOptions:(unint64_t)options preferredTimeScope:(int64_t)scope;
- (double)chartPointLineWidthForTimeScope:(int64_t)scope;
- (double)chartPointRadiusForTimeScope:(int64_t)scope;
- (id)_ruleForKey:(id)key timeScope:(int64_t)scope;
- (id)allowedDecimalPrecisionRuleForUnit:(id)unit;
- (id)intervalComponentsForTimeScope:(int64_t)scope;
- (int64_t)chartStyleForTimeScope:(int64_t)scope;
- (void)_setRule:(id)rule forKey:(id)key timeScope:(int64_t)scope;
- (void)setAllowedDecimalPrecisionRule:(id)rule perUnitPrecisionRules:(id)rules;
- (void)setChartPointLineWidth:(double)width forTimeScope:(int64_t)scope;
- (void)setChartPointRadius:(double)radius forTimeScope:(int64_t)scope;
- (void)setChartStyle:(int64_t)style forTimeScope:(int64_t)scope;
- (void)setLineChartExtendFirstValue:(BOOL)value forTimeScope:(int64_t)scope;
- (void)setLineChartExtendLastValue:(BOOL)value forTimeScope:(int64_t)scope;
- (void)setLineChartFlatLastValue:(BOOL)value forTimeScope:(int64_t)scope;
- (void)setLineChartUsesPointMarkerImage:(BOOL)image forTimeScope:(int64_t)scope;
- (void)setLineChartUsesValueAxisAnnotation:(BOOL)annotation forTimeScope:(int64_t)scope;
@end

@implementation HKDisplayTypeChartingRules

- (HKDisplayTypeChartingRules)initWithDefaultChartStyle:(int64_t)style chartingOptions:(unint64_t)options preferredTimeScope:(int64_t)scope
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = HKDisplayTypeChartingRules;
  v8 = [(HKDisplayTypeChartingRules *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_defaultChartStyle = style;
    if (_DefaultDecimalPrecisionRule_onceToken != -1)
    {
      [HKDisplayTypeChartingRules initWithDefaultChartStyle:chartingOptions:preferredTimeScope:];
    }

    objc_storeStrong(&v9->_allowedDecimalPrecisionRule, _DefaultDecimalPrecisionRule_defaultPrecisionRule);
    maximumYAxisLabelCount = v9->_maximumYAxisLabelCount;
    v9->_maximumYAxisLabelCount = 0;

    maximumYAxisLabelWidth = v9->_maximumYAxisLabelWidth;
    v9->_maximumYAxisLabelWidth = &unk_1F4384910;

    v9->_preferredTimeScope = scope;
    v9->_shouldDisplayUnitForAxisLabels = optionsCopy & 1;
    v9->_shouldShowInitialLollipop = (optionsCopy & 2) == 0;
    v9->_shouldInvertYAxis = (optionsCopy & 4) != 0;
    v9->_shouldConnectSamplesWithLines = (optionsCopy & 8) == 0;
    v9->_shouldRoundYAxisDuringExpansion = (optionsCopy & 0x10) == 0;
  }

  return v9;
}

+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)style axisScalingRule:(id)rule
{
  ruleCopy = rule;
  v6 = [objc_opt_class() chartingRulesWithDefaultChartStyle:style chartStyleForTimeScopes:0 axisScalingRule:ruleCopy preferredTimeScope:5 chartingOptions:0];

  return v6;
}

+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)style chartStyleForTimeScopes:(id)scopes axisScalingRule:(id)rule preferredTimeScope:(int64_t)scope chartingOptions:(unint64_t)options
{
  ruleCopy = rule;
  scopesCopy = scopes;
  v13 = [objc_opt_class() chartingRulesWithDefaultChartStyle:style chartStyleForTimeScopes:scopesCopy axisScalingRule:ruleCopy compactAxisScalingRule:0 preferredTimeScope:scope chartingOptions:options];

  return v13;
}

+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)style chartStyleForTimeScopes:(id)scopes axisScalingRule:(id)rule compactAxisScalingRule:(id)scalingRule preferredTimeScope:(int64_t)scope chartingOptions:(unint64_t)options
{
  scopesCopy = scopes;
  scalingRuleCopy = scalingRule;
  ruleCopy = rule;
  v16 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:style chartingOptions:options];
  [(HKDisplayTypeChartingRules *)v16 setAxisScalingRule:ruleCopy];

  [(HKDisplayTypeChartingRules *)v16 setCompactChartAxisScalingRule:scalingRuleCopy];
  [(HKDisplayTypeChartingRules *)v16 setPreferredTimeScope:scope];
  if (scopesCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __163__HKDisplayTypeChartingRules_chartingRulesWithDefaultChartStyle_chartStyleForTimeScopes_axisScalingRule_compactAxisScalingRule_preferredTimeScope_chartingOptions___block_invoke;
    v18[3] = &unk_1E81B8548;
    v19 = v16;
    [scopesCopy enumerateKeysAndObjectsUsingBlock:v18];
  }

  return v16;
}

uint64_t __163__HKDisplayTypeChartingRules_chartingRulesWithDefaultChartStyle_chartStyleForTimeScopes_axisScalingRule_compactAxisScalingRule_preferredTimeScope_chartingOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 integerValue];
  v7 = [v5 integerValue];

  return [v4 setChartStyle:v6 forTimeScope:v7];
}

- (void)setChartStyle:(int64_t)style forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"chartStyle" timeScope:scope];
}

- (int64_t)chartStyleForTimeScope:(int64_t)scope
{
  v4 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"chartStyle" timeScope:scope];
  v5 = v4;
  if (v4)
  {
    defaultChartStyle = [v4 integerValue];
  }

  else
  {
    defaultChartStyle = self->_defaultChartStyle;
  }

  return defaultChartStyle;
}

- (id)intervalComponentsForTimeScope:(int64_t)scope
{
  v4 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"intervalComponents" timeScope:scope];
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v4 = v6;
  if (scope <= 4)
  {
    if (scope <= 2)
    {
      if (scope >= 2)
      {
        if (scope == 2)
        {
          [v6 setMonth:1];
        }
      }

      else
      {
        [v6 setYear:1];
      }

      goto LABEL_2;
    }

    if (scope == 3)
    {
      [v6 setWeekOfYear:1];
      goto LABEL_2;
    }

    goto LABEL_16;
  }

  if (scope <= 6)
  {
    if (scope != 5)
    {
      [v6 setHour:1];
      goto LABEL_2;
    }

    goto LABEL_16;
  }

  if (scope == 8)
  {
LABEL_16:
    [v6 setDay:1];
    goto LABEL_2;
  }

  if (scope == 7)
  {
    [v6 setMinute:15];
  }

LABEL_2:

  return v4;
}

- (void)setChartPointLineWidth:(double)width forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineWidth" timeScope:scope];
}

- (double)chartPointLineWidthForTimeScope:(int64_t)scope
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineWidth" timeScope:scope];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.5;
  }

  return v6;
}

- (void)setChartPointRadius:(double)radius forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"radius" timeScope:scope];
}

- (double)chartPointRadiusForTimeScope:(int64_t)scope
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"radius" timeScope:scope];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 2.5;
  }

  return v6;
}

- (void)setLineChartFlatLastValue:(BOOL)value forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:value];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartFlatLastValue" timeScope:scope];
}

- (BOOL)lineChartFlatLastValueForTimeScope:(int64_t)scope
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartFlatLastValue" timeScope:scope];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setLineChartExtendLastValue:(BOOL)value forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:value];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartExtendLastValue" timeScope:scope];
}

- (BOOL)lineChartExtendLastValueForTimeScope:(int64_t)scope
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartExtendLastValue" timeScope:scope];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setLineChartExtendFirstValue:(BOOL)value forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:value];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartExtendFirstValue" timeScope:scope];
}

- (BOOL)lineChartExtendFirstValueForTimeScope:(int64_t)scope
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartExtendFirstValue" timeScope:scope];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setLineChartUsesPointMarkerImage:(BOOL)image forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:image];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartUsesPointMarkerImage" timeScope:scope];
}

- (BOOL)lineChartUsesPointMarkerImageForTimeScope:(int64_t)scope
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartUsesPointMarkerImage" timeScope:scope];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setLineChartUsesValueAxisAnnotation:(BOOL)annotation forTimeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:annotation];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartUsesValueAxisAnnotation" timeScope:scope];
}

- (BOOL)lineChartUsesValueAxisAnnotationForTimeScope:(int64_t)scope
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartUsesValueAxisAnnotation" timeScope:scope];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_setRule:(id)rule forKey:(id)key timeScope:(int64_t)scope
{
  ruleCopy = rule;
  keyCopy = key;
  rulesByTimeScope = self->_rulesByTimeScope;
  if (!rulesByTimeScope)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = self->_rulesByTimeScope;
    self->_rulesByTimeScope = v10;

    rulesByTimeScope = self->_rulesByTimeScope;
  }

  v12 = [(NSMutableDictionary *)rulesByTimeScope objectForKeyedSubscript:keyCopy];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_rulesByTimeScope setObject:v12 forKeyedSubscript:keyCopy];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  [v12 setObject:ruleCopy forKeyedSubscript:v13];
}

- (id)_ruleForKey:(id)key timeScope:(int64_t)scope
{
  v5 = [(NSMutableDictionary *)self->_rulesByTimeScope objectForKeyedSubscript:key];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)setAllowedDecimalPrecisionRule:(id)rule perUnitPrecisionRules:(id)rules
{
  ruleCopy = rule;
  rulesCopy = rules;
  if (ruleCopy)
  {
    objc_storeStrong(&self->_allowedDecimalPrecisionRule, rule);
  }

  if (rulesCopy)
  {
    objc_storeStrong(&self->_perUnitDecimalPrecision, rules);
  }
}

- (id)allowedDecimalPrecisionRuleForUnit:(id)unit
{
  v5 = self->_allowedDecimalPrecisionRule;
  if (unit)
  {
    v6 = [(NSDictionary *)self->_perUnitDecimalPrecision objectForKeyedSubscript:unit];
    v7 = v6;
    if (v6)
    {
      v8 = v6;

      v5 = v8;
    }
  }

  return v5;
}

@end