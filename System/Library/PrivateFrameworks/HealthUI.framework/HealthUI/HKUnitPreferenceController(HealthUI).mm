@interface HKUnitPreferenceController(HealthUI)
+ (id)localizedUnitStringForObjectType:()HealthUI unit:value:wheelchairUse:;
- (double)scaleFactorForYAxisLabeling:()HealthUI;
- (id)displayRangeForDisplayType:()HealthUI;
- (id)localizedDisplayNameForDisplayType:()HealthUI;
- (id)localizedDisplayNameForDisplayType:()HealthUI unit:value:;
- (id)localizedDisplayNameForDisplayType:()HealthUI value:nameContext:;
- (id)localizedDisplayNameForUnit:()HealthUI value:nameContext:;
- (id)localizedLongDisplayNameForDisplayType:()HealthUI;
- (id)unitForChartingDisplayType:()HealthUI;
- (id)unitForDisplayType:()HealthUI;
- (void)updatePreferredUnit:()HealthUI forDisplayType:;
@end

@implementation HKUnitPreferenceController(HealthUI)

- (id)unitForDisplayType:()HealthUI
{
  objectType = [a3 objectType];
  if (objectType)
  {
    v5 = [self unitForObjectType:objectType];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unitForChartingDisplayType:()HealthUI
{
  v4 = a3;
  v5 = [self unitForDisplayType:v4];
  if (v5 && ([v4 behavior], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "chartsRelativeData"), v6, v7))
  {
    v8 = [MEMORY[0x1E696C510] _changeInUnit:v5];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (void)updatePreferredUnit:()HealthUI forDisplayType:
{
  v6 = a3;
  objectType = [a4 objectType];
  [self updatePreferredUnit:v6 forObjectType:objectType];
}

- (id)localizedDisplayNameForDisplayType:()HealthUI unit:value:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HKUnitPreferenceController *)self _unitDisplayNameKeyForDisplayType:v10 unit:v9 nameContext:1];
  v12 = MEMORY[0x1E696C518];
  v13 = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _displayNameKey:v11 withNumber:v8 != 0];
  v14 = [(HKUnitPreferenceController *)v12 _localizedHealthUIStringForDisplayType:v10 unit:v9 key:v13 value:v8];

  return v14;
}

- (id)localizedDisplayNameForUnit:()HealthUI value:nameContext:
{
  v7 = MEMORY[0x1E696C518];
  v8 = a4;
  v9 = a3;
  v10 = [(HKUnitPreferenceController *)v7 _displayNameKeyForUnit:v9 nameContext:a5];
  v11 = [(HKUnitPreferenceController *)v7 _displayNameKey:v10 withNumber:v8 != 0];

  v12 = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _localizedHealthUIStringForDisplayType:v9 unit:v11 key:v8 value:?];

  return v12;
}

- (id)localizedLongDisplayNameForDisplayType:()HealthUI
{
  v4 = a3;
  v5 = [self unitForDisplayType:v4];
  v6 = [(HKUnitPreferenceController *)self _longDisplayNameOverrideForDisplayType:v4];
  if (v6 || (-[HKUnitPreferenceController _longDisplayNameForUnit:](self, v5), (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([self localizedDisplayNameForDisplayType:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    displayName = v6;
  }

  else
  {
    localization = [v4 localization];
    displayName = [localization displayName];
  }

  return displayName;
}

- (double)scaleFactorForYAxisLabeling:()HealthUI
{
  v4 = a3;
  v5 = [self unitForDisplayType:v4];
  displayTypeIdentifier = [v4 displayTypeIdentifier];

  v7 = 1.0;
  if (displayTypeIdentifier == 2)
  {
    v8 = [MEMORY[0x1E696C510] unitFromString:@"ft"];
    v9 = [v5 isEqual:v8];

    if (v9)
    {
      v7 = 12.0;
    }

    else
    {
      v7 = 1.0;
    }
  }

  return v7;
}

- (id)displayRangeForDisplayType:()HealthUI
{
  v3 = displayRangeForDisplayType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [HKUnitPreferenceController(HealthUI) displayRangeForDisplayType:];
  }

  v5 = displayRangeForDisplayType____displayRanges;
  objectType = [v4 objectType];

  identifier = [objectType identifier];
  v8 = [v5 objectForKeyedSubscript:identifier];

  return v8;
}

+ (id)localizedUnitStringForObjectType:()HealthUI unit:value:wheelchairUse:
{
  v9 = a4;
  v10 = a5;
  v11 = [HKDisplayTypeController displayTypeForObjectType:a3 wheelchairUse:a6];
  localization = [v11 localization];
  v13 = [localization unitDisplayNameKeyOverrideForUnit:v9 nameContext:1];

  if (!v13)
  {
    v13 = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _displayNameKeyForUnit:v9 nameContext:1];
  }

  v14 = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _displayNameKey:v13 withNumber:1];

  v15 = [(HKUnitPreferenceController *)MEMORY[0x1E696C518] _localizedHealthUIStringForDisplayType:v11 unit:v9 key:v14 value:v10];

  return v15;
}

- (id)localizedDisplayNameForDisplayType:()HealthUI
{
  v4 = a3;
  v5 = [(HKUnitPreferenceController *)self _displayNameKeyForDisplayType:v4 withNumber:0];
  v6 = [(HKUnitPreferenceController *)self localizedHealthUIStringForDisplayType:v4 key:v5 value:0];

  return v6;
}

- (id)localizedDisplayNameForDisplayType:()HealthUI value:nameContext:
{
  v8 = a4 != 0;
  v9 = a4;
  v10 = a3;
  v11 = [(HKUnitPreferenceController *)self _displayNameKeyForDisplayType:v10 withNumber:v8 nameContext:a5];
  v12 = [(HKUnitPreferenceController *)self localizedHealthUIStringForDisplayType:v10 key:v11 value:v9];

  return v12;
}

@end