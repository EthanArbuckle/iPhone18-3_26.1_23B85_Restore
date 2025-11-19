@interface HKReferenceRangeViewData
+ (id)_codedQuantityForValue:(id)a3;
+ (id)_codedQuantityForValueCollection:(id)a3;
+ (id)referenceRangeViewDataFromInspectableValueInRange:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HKReferenceRangeViewData

+ (id)referenceRangeViewDataFromInspectableValueInRange:(id)a3
{
  v4 = a3;
  v5 = [v4 currentValue];

  if (v5)
  {
    v5 = objc_alloc_init(objc_opt_class());
    v6 = [v4 currentValue];
    v7 = [a1 _codedQuantityForValueCollection:v6];
    v8 = [v7 numberValue];
    [v5 setValue:v8];

    v9 = [v4 currentValue];
    v10 = [v9 displayString];
    [v5 setValueString:v10];

    v11 = [v4 lowValue];
    if (v11)
    {
    }

    else
    {
      v12 = [v4 highValue];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    v13 = [v4 highValue];
    v14 = [a1 _codedQuantityForValue:v13];

    v15 = [v4 lowValue];
    v16 = [a1 _codedQuantityForValue:v15];

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
      v21 = [v4 unitString];
      [v5 setUnitString:v21];

      if (v16)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
        [v5 setRangeLow:v22];
      }

      else
      {
        [v5 setRangeLow:0];
      }

      v23 = [v4 lowValue];
      v24 = [v23 displayString];
      [v5 setRangeLowString:v24];

      if (v14)
      {
        v25 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        [v5 setRangeHigh:v25];
      }

      else
      {
        [v5 setRangeHigh:0];
      }

      v26 = [v4 highValue];
      v27 = [v26 displayString];
      [v5 setRangeHighString:v27];
    }
  }

LABEL_18:

  return v5;
}

+ (id)_codedQuantityForValue:(id)a3
{
  v3 = a3;
  v4 = [v3 valueType];
  if ((v4 - 5) >= 2)
  {
    if (v4 == 1)
    {
      v6 = [v3 ratioValue];
      v5 = [v6 numerator];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [v3 codedQuantityValue];
  }

  return v5;
}

+ (id)_codedQuantityForValueCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionType];
  if ((v5 - 2) < 2)
  {
    v7 = [v4 inspectableValues];
    v8 = [v7 firstObject];
    v9 = [a1 _codedQuantityForValue:v8];

LABEL_8:
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v6 = [v4 min];
    goto LABEL_7;
  }

  if (!v5)
  {
    v6 = [v4 inspectableValue];
LABEL_7:
    v7 = v6;
    v9 = [a1 _codedQuantityForValue:v6];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
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