@interface HKQuantityFormattingParameters
- (BOOL)_objectType:(id)a3 isCategoryWithIdentifier:(id)a4;
- (BOOL)_objectType:(id)a3 isQuantityWithIdentifier:(id)a4;
- (BOOL)_unitIsFeet:(id)a3;
- (HKQuantityFormattingParameters)init;
- (id)_sleepFormatForQuantity:(id)a3;
- (id)_standardFormatForQuantity:(id)a3 unit:(id)a4 objectType:(id)a5;
- (id)_unitForQuantity:(id)a3 objectType:(id)a4;
- (id)unitString:(id)a3 quantity:(id)a4;
- (id)valueString:(id)a3 quantity:(id)a4;
- (int64_t)_maximumPrecisionForObjectType:(id)a3 unit:(id)a4 value:(double)a5;
- (void)_setFormatter:(id)a3 maximumSignificantDigits:(int64_t)a4;
@end

@implementation HKQuantityFormattingParameters

- (HKQuantityFormattingParameters)init
{
  v8.receiver = self;
  v8.super_class = HKQuantityFormattingParameters;
  v2 = [(HKQuantityFormattingParameters *)&v8 init];
  v3 = v2;
  if (v2)
  {
    preferredUnit = v2->_preferredUnit;
    v2->_preferredUnit = 0;

    v3->_precision = -1;
    v3->_significantDigits = -1;
    v3->_omitUnit = 0;
    v3->_wheelchairUse = 0;
    v3->_timeFormatOptions = 0;
    valueFont = v3->_valueFont;
    v3->_valueFont = 0;

    unitFont = v3->_unitFont;
    v3->_unitFont = 0;

    *&v3->_useColor = 256;
  }

  return v3;
}

- (id)valueString:(id)a3 quantity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuantityFormattingParameters *)self _unitForQuantity:v7 objectType:v6];
  if ([(HKQuantityFormattingParameters *)self _unitIsFeet:v8])
  {
    v9 = [MEMORY[0x1E696C510] footUnit];
    [v7 doubleValueForUnit:v9];
    v11 = v10;

    v12 = HKFormattedFeetAndInches(v11);
  }

  else if ([(HKQuantityFormattingParameters *)self _objectType:v6 isCategoryWithIdentifier:*MEMORY[0x1E696B560]])
  {
    v12 = HKLocalizedDisplayStringForAppleStandHours(v7, 0, 1, 1);
  }

  else
  {
    if ([(HKQuantityFormattingParameters *)self _objectType:v6 isCategoryWithIdentifier:*MEMORY[0x1E696B698]])
    {
      [(HKQuantityFormattingParameters *)self _sleepFormatForQuantity:v7];
    }

    else
    {
      [(HKQuantityFormattingParameters *)self _standardFormatForQuantity:v7 unit:v8 objectType:v6];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

- (id)_sleepFormatForQuantity:(id)a3
{
  v4 = MEMORY[0x1E696C510];
  v5 = a3;
  v6 = [v4 secondUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  if ([(HKQuantityFormattingParameters *)self timeFormatOptions])
  {
    v9 = [(HKQuantityFormattingParameters *)self timeFormatOptions];
  }

  else
  {
    v9 = 4;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v11 = HKTimePeriodString(v10, v9);

  return v11;
}

- (id)unitString:(id)a3 quantity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuantityFormattingParameters *)self _unitForQuantity:v7 objectType:v6];
  if ([(HKQuantityFormattingParameters *)self omitUnit]|| [(HKQuantityFormattingParameters *)self _unitIsFeet:v8]|| [(HKQuantityFormattingParameters *)self _objectType:v6 isCategoryWithIdentifier:*MEMORY[0x1E696B698]])
  {
    v9 = &stru_1F42FFBE0;
  }

  else
  {
    if ([(HKQuantityFormattingParameters *)self _objectType:v6 isCategoryWithIdentifier:*MEMORY[0x1E696B560]])
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"HOURS_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [v7 doubleValueForUnit:v8];
      v9 = [v11 localizedStringWithFormat:v13, v14];
    }

    else
    {
      [v7 doubleValueForUnit:v8];
      v15 = MEMORY[0x1E696C518];
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v9 = [v15 localizedUnitStringForObjectType:v6 unit:v8 value:v12 wheelchairUse:{-[HKQuantityFormattingParameters wheelchairUse](self, "wheelchairUse")}];
    }
  }

  return v9;
}

- (id)_unitForQuantity:(id)a3 objectType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKQuantityFormattingParameters *)self preferredUnit];
  if (v8 && (v9 = v8, -[HKQuantityFormattingParameters preferredUnit](self, "preferredUnit"), v10 = objc_claimAutoreleasedReturnValue(), [v6 _unit], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "_isCompatibleWithUnit:", v11), v11, v10, v9, v12))
  {
    v13 = [(HKQuantityFormattingParameters *)self preferredUnit];
  }

  else
  {
    if ([(HKQuantityFormattingParameters *)self _objectType:v7 isQuantityWithIdentifier:*MEMORY[0x1E696BD30]])
    {
      v14 = [MEMORY[0x1E696C510] _countPerMinuteUnit];
    }

    else
    {
      v14 = 0;
    }

    if ([(HKQuantityFormattingParameters *)self _objectType:v7 isQuantityWithIdentifier:*MEMORY[0x1E696BC40]])
    {
      v15 = [MEMORY[0x1E696C510] minuteUnit];

      v14 = v15;
    }

    if ([(HKQuantityFormattingParameters *)self _objectType:v7 isCategoryWithIdentifier:*MEMORY[0x1E696B560]])
    {
      v16 = [MEMORY[0x1E696C510] countUnit];

      v14 = v16;
    }

    if ([(HKQuantityFormattingParameters *)self _objectType:v7 isCategoryWithIdentifier:*MEMORY[0x1E696B648]])
    {
      v17 = [MEMORY[0x1E696C510] minuteUnit];

      v14 = v17;
    }

    if (v14 && ([v6 _unit], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v14, "_isCompatibleWithUnit:", v18), v18, v19))
    {
      v20 = v14;
    }

    else
    {
      v20 = [v6 _unit];
    }

    v13 = v20;
  }

  return v13;
}

- (BOOL)_unitIsFeet:(id)a3
{
  v3 = MEMORY[0x1E696C510];
  v4 = a3;
  v5 = [v3 footUnit];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (BOOL)_objectType:(id)a3 isQuantityWithIdentifier:(id)a4
{
  v5 = MEMORY[0x1E696C2E0];
  v6 = a3;
  v7 = [v5 quantityTypeForIdentifier:a4];
  LOBYTE(v5) = [v6 isEqual:v7];

  return v5;
}

- (BOOL)_objectType:(id)a3 isCategoryWithIdentifier:(id)a4
{
  v5 = MEMORY[0x1E696BF90];
  v6 = a3;
  v7 = [v5 categoryTypeForIdentifier:a4];
  LOBYTE(v5) = [v6 isEqual:v7];

  return v5;
}

- (id)_standardFormatForQuantity:(id)a3 unit:(id)a4 objectType:(id)a5
{
  v8 = a4;
  v9 = a5;
  [a3 doubleValueForUnit:v8];
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v12 setNumberStyle:1];
  if (([(HKQuantityFormattingParameters *)self precision]& 0x8000000000000000) == 0)
  {
    v13 = [(HKQuantityFormattingParameters *)self precision];
LABEL_3:
    [v12 setMaximumFractionDigits:v13];
    goto LABEL_7;
  }

  if ([(HKQuantityFormattingParameters *)self significantDigits]< 0)
  {
    v13 = [(HKQuantityFormattingParameters *)self _maximumPrecisionForObjectType:v9 unit:v8 value:v11];
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    v15 = self;
    v16 = v12;
    v14 = 6;
  }

  else
  {
    v14 = [(HKQuantityFormattingParameters *)self significantDigits];
    v15 = self;
    v16 = v12;
  }

  [(HKQuantityFormattingParameters *)v15 _setFormatter:v16 maximumSignificantDigits:v14];
LABEL_7:
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v18 = [v12 stringFromNumber:v17];

  return v18;
}

- (void)_setFormatter:(id)a3 maximumSignificantDigits:(int64_t)a4
{
  v5 = a3;
  [v5 setUsesSignificantDigits:1];
  [v5 setMinimumSignificantDigits:1];
  [v5 setMaximumSignificantDigits:a4];
}

- (int64_t)_maximumPrecisionForObjectType:(id)a3 unit:(id)a4 value:(double)a5
{
  v7 = a4;
  v8 = [HKDisplayTypeController displayTypeForObjectType:a3 wheelchairUse:0];
  v9 = [v8 chartingRules];
  v10 = [v9 allowedDecimalPrecisionRuleForUnit:v7];

  if (v10)
  {
    v11 = [v10 decimalPrecisionForValue:a5];
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

@end