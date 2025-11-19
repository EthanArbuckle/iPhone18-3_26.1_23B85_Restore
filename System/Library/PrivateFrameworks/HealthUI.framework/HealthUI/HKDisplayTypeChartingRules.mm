@interface HKDisplayTypeChartingRules
+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)a3 axisScalingRule:(id)a4;
+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)a3 chartStyleForTimeScopes:(id)a4 axisScalingRule:(id)a5 compactAxisScalingRule:(id)a6 preferredTimeScope:(int64_t)a7 chartingOptions:(unint64_t)a8;
+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)a3 chartStyleForTimeScopes:(id)a4 axisScalingRule:(id)a5 preferredTimeScope:(int64_t)a6 chartingOptions:(unint64_t)a7;
- (BOOL)lineChartExtendFirstValueForTimeScope:(int64_t)a3;
- (BOOL)lineChartExtendLastValueForTimeScope:(int64_t)a3;
- (BOOL)lineChartFlatLastValueForTimeScope:(int64_t)a3;
- (BOOL)lineChartUsesPointMarkerImageForTimeScope:(int64_t)a3;
- (BOOL)lineChartUsesValueAxisAnnotationForTimeScope:(int64_t)a3;
- (HKDisplayTypeChartingRules)initWithDefaultChartStyle:(int64_t)a3 chartingOptions:(unint64_t)a4 preferredTimeScope:(int64_t)a5;
- (double)chartPointLineWidthForTimeScope:(int64_t)a3;
- (double)chartPointRadiusForTimeScope:(int64_t)a3;
- (id)_ruleForKey:(id)a3 timeScope:(int64_t)a4;
- (id)allowedDecimalPrecisionRuleForUnit:(id)a3;
- (id)intervalComponentsForTimeScope:(int64_t)a3;
- (int64_t)chartStyleForTimeScope:(int64_t)a3;
- (void)_setRule:(id)a3 forKey:(id)a4 timeScope:(int64_t)a5;
- (void)setAllowedDecimalPrecisionRule:(id)a3 perUnitPrecisionRules:(id)a4;
- (void)setChartPointLineWidth:(double)a3 forTimeScope:(int64_t)a4;
- (void)setChartPointRadius:(double)a3 forTimeScope:(int64_t)a4;
- (void)setChartStyle:(int64_t)a3 forTimeScope:(int64_t)a4;
- (void)setLineChartExtendFirstValue:(BOOL)a3 forTimeScope:(int64_t)a4;
- (void)setLineChartExtendLastValue:(BOOL)a3 forTimeScope:(int64_t)a4;
- (void)setLineChartFlatLastValue:(BOOL)a3 forTimeScope:(int64_t)a4;
- (void)setLineChartUsesPointMarkerImage:(BOOL)a3 forTimeScope:(int64_t)a4;
- (void)setLineChartUsesValueAxisAnnotation:(BOOL)a3 forTimeScope:(int64_t)a4;
@end

@implementation HKDisplayTypeChartingRules

- (HKDisplayTypeChartingRules)initWithDefaultChartStyle:(int64_t)a3 chartingOptions:(unint64_t)a4 preferredTimeScope:(int64_t)a5
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = HKDisplayTypeChartingRules;
  v8 = [(HKDisplayTypeChartingRules *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_defaultChartStyle = a3;
    if (_DefaultDecimalPrecisionRule_onceToken != -1)
    {
      [HKDisplayTypeChartingRules initWithDefaultChartStyle:chartingOptions:preferredTimeScope:];
    }

    objc_storeStrong(&v9->_allowedDecimalPrecisionRule, _DefaultDecimalPrecisionRule_defaultPrecisionRule);
    maximumYAxisLabelCount = v9->_maximumYAxisLabelCount;
    v9->_maximumYAxisLabelCount = 0;

    maximumYAxisLabelWidth = v9->_maximumYAxisLabelWidth;
    v9->_maximumYAxisLabelWidth = &unk_1F4384910;

    v9->_preferredTimeScope = a5;
    v9->_shouldDisplayUnitForAxisLabels = v6 & 1;
    v9->_shouldShowInitialLollipop = (v6 & 2) == 0;
    v9->_shouldInvertYAxis = (v6 & 4) != 0;
    v9->_shouldConnectSamplesWithLines = (v6 & 8) == 0;
    v9->_shouldRoundYAxisDuringExpansion = (v6 & 0x10) == 0;
  }

  return v9;
}

+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)a3 axisScalingRule:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() chartingRulesWithDefaultChartStyle:a3 chartStyleForTimeScopes:0 axisScalingRule:v5 preferredTimeScope:5 chartingOptions:0];

  return v6;
}

+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)a3 chartStyleForTimeScopes:(id)a4 axisScalingRule:(id)a5 preferredTimeScope:(int64_t)a6 chartingOptions:(unint64_t)a7
{
  v11 = a5;
  v12 = a4;
  v13 = [objc_opt_class() chartingRulesWithDefaultChartStyle:a3 chartStyleForTimeScopes:v12 axisScalingRule:v11 compactAxisScalingRule:0 preferredTimeScope:a6 chartingOptions:a7];

  return v13;
}

+ (HKDisplayTypeChartingRules)chartingRulesWithDefaultChartStyle:(int64_t)a3 chartStyleForTimeScopes:(id)a4 axisScalingRule:(id)a5 compactAxisScalingRule:(id)a6 preferredTimeScope:(int64_t)a7 chartingOptions:(unint64_t)a8
{
  v13 = a4;
  v14 = a6;
  v15 = a5;
  v16 = [[HKDisplayTypeChartingRules alloc] initWithDefaultChartStyle:a3 chartingOptions:a8];
  [(HKDisplayTypeChartingRules *)v16 setAxisScalingRule:v15];

  [(HKDisplayTypeChartingRules *)v16 setCompactChartAxisScalingRule:v14];
  [(HKDisplayTypeChartingRules *)v16 setPreferredTimeScope:a7];
  if (v13)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __163__HKDisplayTypeChartingRules_chartingRulesWithDefaultChartStyle_chartStyleForTimeScopes_axisScalingRule_compactAxisScalingRule_preferredTimeScope_chartingOptions___block_invoke;
    v18[3] = &unk_1E81B8548;
    v19 = v16;
    [v13 enumerateKeysAndObjectsUsingBlock:v18];
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

- (void)setChartStyle:(int64_t)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"chartStyle" timeScope:a4];
}

- (int64_t)chartStyleForTimeScope:(int64_t)a3
{
  v4 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"chartStyle" timeScope:a3];
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

- (id)intervalComponentsForTimeScope:(int64_t)a3
{
  v4 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"intervalComponents" timeScope:a3];
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v4 = v6;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 >= 2)
      {
        if (a3 == 2)
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

    if (a3 == 3)
    {
      [v6 setWeekOfYear:1];
      goto LABEL_2;
    }

    goto LABEL_16;
  }

  if (a3 <= 6)
  {
    if (a3 != 5)
    {
      [v6 setHour:1];
      goto LABEL_2;
    }

    goto LABEL_16;
  }

  if (a3 == 8)
  {
LABEL_16:
    [v6 setDay:1];
    goto LABEL_2;
  }

  if (a3 == 7)
  {
    [v6 setMinute:15];
  }

LABEL_2:

  return v4;
}

- (void)setChartPointLineWidth:(double)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineWidth" timeScope:a4];
}

- (double)chartPointLineWidthForTimeScope:(int64_t)a3
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineWidth" timeScope:a3];
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

- (void)setChartPointRadius:(double)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"radius" timeScope:a4];
}

- (double)chartPointRadiusForTimeScope:(int64_t)a3
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"radius" timeScope:a3];
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

- (void)setLineChartFlatLastValue:(BOOL)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartFlatLastValue" timeScope:a4];
}

- (BOOL)lineChartFlatLastValueForTimeScope:(int64_t)a3
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartFlatLastValue" timeScope:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLineChartExtendLastValue:(BOOL)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartExtendLastValue" timeScope:a4];
}

- (BOOL)lineChartExtendLastValueForTimeScope:(int64_t)a3
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartExtendLastValue" timeScope:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLineChartExtendFirstValue:(BOOL)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartExtendFirstValue" timeScope:a4];
}

- (BOOL)lineChartExtendFirstValueForTimeScope:(int64_t)a3
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartExtendFirstValue" timeScope:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLineChartUsesPointMarkerImage:(BOOL)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartUsesPointMarkerImage" timeScope:a4];
}

- (BOOL)lineChartUsesPointMarkerImageForTimeScope:(int64_t)a3
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartUsesPointMarkerImage" timeScope:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setLineChartUsesValueAxisAnnotation:(BOOL)a3 forTimeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(HKDisplayTypeChartingRules *)self _setRule:v6 forKey:@"lineChartUsesValueAxisAnnotation" timeScope:a4];
}

- (BOOL)lineChartUsesValueAxisAnnotationForTimeScope:(int64_t)a3
{
  v3 = [(HKDisplayTypeChartingRules *)self _ruleForKey:@"lineChartUsesValueAxisAnnotation" timeScope:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setRule:(id)a3 forKey:(id)a4 timeScope:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  rulesByTimeScope = self->_rulesByTimeScope;
  if (!rulesByTimeScope)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = self->_rulesByTimeScope;
    self->_rulesByTimeScope = v10;

    rulesByTimeScope = self->_rulesByTimeScope;
  }

  v12 = [(NSMutableDictionary *)rulesByTimeScope objectForKeyedSubscript:v8];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_rulesByTimeScope setObject:v12 forKeyedSubscript:v8];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v12 setObject:v14 forKeyedSubscript:v13];
}

- (id)_ruleForKey:(id)a3 timeScope:(int64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_rulesByTimeScope objectForKeyedSubscript:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)setAllowedDecimalPrecisionRule:(id)a3 perUnitPrecisionRules:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (v8)
  {
    objc_storeStrong(&self->_allowedDecimalPrecisionRule, a3);
  }

  if (v7)
  {
    objc_storeStrong(&self->_perUnitDecimalPrecision, a4);
  }
}

- (id)allowedDecimalPrecisionRuleForUnit:(id)a3
{
  v5 = self->_allowedDecimalPrecisionRule;
  if (a3)
  {
    v6 = [(NSDictionary *)self->_perUnitDecimalPrecision objectForKeyedSubscript:a3];
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