@interface HKReferenceRangeViewData
+ (id)_codedQuantityForValue:(id)value;
+ (id)_codedQuantityForValueCollection:(id)collection;
+ (id)referenceRangeViewDataFromInspectableValueInRange:(id)range;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKReferenceRangeViewData

+ (id)referenceRangeViewDataFromInspectableValueInRange:(id)range
{
  rangeCopy = range;
  currentValue = [rangeCopy currentValue];

  if (currentValue)
  {
    currentValue = objc_alloc_init(objc_opt_class());
    currentValue2 = [rangeCopy currentValue];
    v7 = [self _codedQuantityForValueCollection:currentValue2];
    numberValue = [v7 numberValue];
    [currentValue setValue:numberValue];

    currentValue3 = [rangeCopy currentValue];
    displayString = [currentValue3 displayString];
    [currentValue setValueString:displayString];

    lowValue = [rangeCopy lowValue];
    if (lowValue)
    {
    }

    else
    {
      highValue = [rangeCopy highValue];

      if (!highValue)
      {
        goto LABEL_18;
      }
    }

    highValue2 = [rangeCopy highValue];
    v14 = [self _codedQuantityForValue:highValue2];

    lowValue2 = [rangeCopy lowValue];
    v16 = [self _codedQuantityForValue:lowValue2];

    v17 = 0.0;
    v18 = 0.0;
    if (v14)
    {
      [v14 doubleValue];
      v18 = v19;
    }

    if (v16)
    {
      [v16 doubleValue];
      v17 = v20;
    }

    if (vabdd_f64(v18, v17) > 2.22044605e-16)
    {
      unitString = [rangeCopy unitString];
      [currentValue setUnitString:unitString];

      if (v16)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
        [currentValue setRangeLow:v22];
      }

      else
      {
        [currentValue setRangeLow:0];
      }

      lowValue3 = [rangeCopy lowValue];
      displayString2 = [lowValue3 displayString];
      [currentValue setRangeLowString:displayString2];

      if (v14)
      {
        v25 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        [currentValue setRangeHigh:v25];
      }

      else
      {
        [currentValue setRangeHigh:0];
      }

      highValue3 = [rangeCopy highValue];
      displayString3 = [highValue3 displayString];
      [currentValue setRangeHighString:displayString3];
    }
  }

LABEL_18:

  return currentValue;
}

+ (id)_codedQuantityForValue:(id)value
{
  valueCopy = value;
  valueType = [valueCopy valueType];
  if ((valueType - 5) >= 2)
  {
    if (valueType == 1)
    {
      ratioValue = [valueCopy ratioValue];
      numerator = [ratioValue numerator];
    }

    else
    {
      numerator = 0;
    }
  }

  else
  {
    numerator = [valueCopy codedQuantityValue];
  }

  return numerator;
}

+ (id)_codedQuantityForValueCollection:(id)collection
{
  collectionCopy = collection;
  collectionType = [collectionCopy collectionType];
  if ((collectionType - 2) < 2)
  {
    inspectableValues = [collectionCopy inspectableValues];
    firstObject = [inspectableValues firstObject];
    v9 = [self _codedQuantityForValue:firstObject];

LABEL_8:
    goto LABEL_9;
  }

  if (collectionType == 1)
  {
    inspectableValue = [collectionCopy min];
    goto LABEL_7;
  }

  if (!collectionType)
  {
    inspectableValue = [collectionCopy inspectableValue];
LABEL_7:
    inspectableValues = inspectableValue;
    v9 = [self _codedQuantityForValue:inspectableValue];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSString *)self->_valueString copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_unitString copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_rangeLowString copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_rangeHighString copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_value copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSNumber *)self->_rangeLow copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSNumber *)self->_rangeHigh copy];
  v18 = v4[8];
  v4[8] = v17;

  *(v4 + 8) = self->_useOutOfRangeValueColor;
  return v4;
}

@end