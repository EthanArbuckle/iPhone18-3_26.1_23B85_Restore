@interface HKQuantityFormattingParameters
- (BOOL)_objectType:(id)type isCategoryWithIdentifier:(id)identifier;
- (BOOL)_objectType:(id)type isQuantityWithIdentifier:(id)identifier;
- (BOOL)_unitIsFeet:(id)feet;
- (HKQuantityFormattingParameters)init;
- (id)_sleepFormatForQuantity:(id)quantity;
- (id)_standardFormatForQuantity:(id)quantity unit:(id)unit objectType:(id)type;
- (id)_unitForQuantity:(id)quantity objectType:(id)type;
- (id)unitString:(id)string quantity:(id)quantity;
- (id)valueString:(id)string quantity:(id)quantity;
- (int64_t)_maximumPrecisionForObjectType:(id)type unit:(id)unit value:(double)value;
- (void)_setFormatter:(id)formatter maximumSignificantDigits:(int64_t)digits;
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

- (id)valueString:(id)string quantity:(id)quantity
{
  stringCopy = string;
  quantityCopy = quantity;
  v8 = [(HKQuantityFormattingParameters *)self _unitForQuantity:quantityCopy objectType:stringCopy];
  if ([(HKQuantityFormattingParameters *)self _unitIsFeet:v8])
  {
    footUnit = [MEMORY[0x1E696C510] footUnit];
    [quantityCopy doubleValueForUnit:footUnit];
    v11 = v10;

    v12 = HKFormattedFeetAndInches(v11);
  }

  else if ([(HKQuantityFormattingParameters *)self _objectType:stringCopy isCategoryWithIdentifier:*MEMORY[0x1E696B560]])
  {
    v12 = HKLocalizedDisplayStringForAppleStandHours(quantityCopy, 0, 1, 1);
  }

  else
  {
    if ([(HKQuantityFormattingParameters *)self _objectType:stringCopy isCategoryWithIdentifier:*MEMORY[0x1E696B698]])
    {
      [(HKQuantityFormattingParameters *)self _sleepFormatForQuantity:quantityCopy];
    }

    else
    {
      [(HKQuantityFormattingParameters *)self _standardFormatForQuantity:quantityCopy unit:v8 objectType:stringCopy];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

- (id)_sleepFormatForQuantity:(id)quantity
{
  v4 = MEMORY[0x1E696C510];
  quantityCopy = quantity;
  secondUnit = [v4 secondUnit];
  [quantityCopy doubleValueForUnit:secondUnit];
  v8 = v7;

  if ([(HKQuantityFormattingParameters *)self timeFormatOptions])
  {
    timeFormatOptions = [(HKQuantityFormattingParameters *)self timeFormatOptions];
  }

  else
  {
    timeFormatOptions = 4;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v11 = HKTimePeriodString(v10, timeFormatOptions);

  return v11;
}

- (id)unitString:(id)string quantity:(id)quantity
{
  stringCopy = string;
  quantityCopy = quantity;
  v8 = [(HKQuantityFormattingParameters *)self _unitForQuantity:quantityCopy objectType:stringCopy];
  if ([(HKQuantityFormattingParameters *)self omitUnit]|| [(HKQuantityFormattingParameters *)self _unitIsFeet:v8]|| [(HKQuantityFormattingParameters *)self _objectType:stringCopy isCategoryWithIdentifier:*MEMORY[0x1E696B698]])
  {
    v9 = &stru_1F42FFBE0;
  }

  else
  {
    if ([(HKQuantityFormattingParameters *)self _objectType:stringCopy isCategoryWithIdentifier:*MEMORY[0x1E696B560]])
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v13 = [v12 localizedStringForKey:@"HOURS_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      [quantityCopy doubleValueForUnit:v8];
      v9 = [v11 localizedStringWithFormat:v13, v14];
    }

    else
    {
      [quantityCopy doubleValueForUnit:v8];
      v15 = MEMORY[0x1E696C518];
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v9 = [v15 localizedUnitStringForObjectType:stringCopy unit:v8 value:v12 wheelchairUse:{-[HKQuantityFormattingParameters wheelchairUse](self, "wheelchairUse")}];
    }
  }

  return v9;
}

- (id)_unitForQuantity:(id)quantity objectType:(id)type
{
  quantityCopy = quantity;
  typeCopy = type;
  preferredUnit = [(HKQuantityFormattingParameters *)self preferredUnit];
  if (preferredUnit && (v9 = preferredUnit, -[HKQuantityFormattingParameters preferredUnit](self, "preferredUnit"), v10 = objc_claimAutoreleasedReturnValue(), [quantityCopy _unit], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "_isCompatibleWithUnit:", v11), v11, v10, v9, v12))
  {
    preferredUnit2 = [(HKQuantityFormattingParameters *)self preferredUnit];
  }

  else
  {
    if ([(HKQuantityFormattingParameters *)self _objectType:typeCopy isQuantityWithIdentifier:*MEMORY[0x1E696BD30]])
    {
      _countPerMinuteUnit = [MEMORY[0x1E696C510] _countPerMinuteUnit];
    }

    else
    {
      _countPerMinuteUnit = 0;
    }

    if ([(HKQuantityFormattingParameters *)self _objectType:typeCopy isQuantityWithIdentifier:*MEMORY[0x1E696BC40]])
    {
      minuteUnit = [MEMORY[0x1E696C510] minuteUnit];

      _countPerMinuteUnit = minuteUnit;
    }

    if ([(HKQuantityFormattingParameters *)self _objectType:typeCopy isCategoryWithIdentifier:*MEMORY[0x1E696B560]])
    {
      countUnit = [MEMORY[0x1E696C510] countUnit];

      _countPerMinuteUnit = countUnit;
    }

    if ([(HKQuantityFormattingParameters *)self _objectType:typeCopy isCategoryWithIdentifier:*MEMORY[0x1E696B648]])
    {
      minuteUnit2 = [MEMORY[0x1E696C510] minuteUnit];

      _countPerMinuteUnit = minuteUnit2;
    }

    if (_countPerMinuteUnit && ([quantityCopy _unit], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(_countPerMinuteUnit, "_isCompatibleWithUnit:", v18), v18, v19))
    {
      _unit = _countPerMinuteUnit;
    }

    else
    {
      _unit = [quantityCopy _unit];
    }

    preferredUnit2 = _unit;
  }

  return preferredUnit2;
}

- (BOOL)_unitIsFeet:(id)feet
{
  v3 = MEMORY[0x1E696C510];
  feetCopy = feet;
  footUnit = [v3 footUnit];
  v6 = [feetCopy isEqual:footUnit];

  return v6;
}

- (BOOL)_objectType:(id)type isQuantityWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E696C2E0];
  typeCopy = type;
  v7 = [v5 quantityTypeForIdentifier:identifier];
  LOBYTE(v5) = [typeCopy isEqual:v7];

  return v5;
}

- (BOOL)_objectType:(id)type isCategoryWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E696BF90];
  typeCopy = type;
  v7 = [v5 categoryTypeForIdentifier:identifier];
  LOBYTE(v5) = [typeCopy isEqual:v7];

  return v5;
}

- (id)_standardFormatForQuantity:(id)quantity unit:(id)unit objectType:(id)type
{
  unitCopy = unit;
  typeCopy = type;
  [quantity doubleValueForUnit:unitCopy];
  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v12 setNumberStyle:1];
  if (([(HKQuantityFormattingParameters *)self precision]& 0x8000000000000000) == 0)
  {
    precision = [(HKQuantityFormattingParameters *)self precision];
LABEL_3:
    [v12 setMaximumFractionDigits:precision];
    goto LABEL_7;
  }

  if ([(HKQuantityFormattingParameters *)self significantDigits]< 0)
  {
    precision = [(HKQuantityFormattingParameters *)self _maximumPrecisionForObjectType:typeCopy unit:unitCopy value:v11];
    if ((precision & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    selfCopy2 = self;
    v16 = v12;
    significantDigits = 6;
  }

  else
  {
    significantDigits = [(HKQuantityFormattingParameters *)self significantDigits];
    selfCopy2 = self;
    v16 = v12;
  }

  [(HKQuantityFormattingParameters *)selfCopy2 _setFormatter:v16 maximumSignificantDigits:significantDigits];
LABEL_7:
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v18 = [v12 stringFromNumber:v17];

  return v18;
}

- (void)_setFormatter:(id)formatter maximumSignificantDigits:(int64_t)digits
{
  formatterCopy = formatter;
  [formatterCopy setUsesSignificantDigits:1];
  [formatterCopy setMinimumSignificantDigits:1];
  [formatterCopy setMaximumSignificantDigits:digits];
}

- (int64_t)_maximumPrecisionForObjectType:(id)type unit:(id)unit value:(double)value
{
  unitCopy = unit;
  v8 = [HKDisplayTypeController displayTypeForObjectType:type wheelchairUse:0];
  chartingRules = [v8 chartingRules];
  v10 = [chartingRules allowedDecimalPrecisionRuleForUnit:unitCopy];

  if (v10)
  {
    v11 = [v10 decimalPrecisionForValue:value];
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

@end