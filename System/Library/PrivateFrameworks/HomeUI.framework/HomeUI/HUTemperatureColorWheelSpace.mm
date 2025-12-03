@interface HUTemperatureColorWheelSpace
+ ($F24F406B2B787EFB06265DBA3D28CBD5)defaultTemperatureRange;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)largestAllowableTemperatureRange;
- ($01BB1521EC52D44A8E7628F5261DCEC8)colorForCoordinate:(id)coordinate;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateForColor:(id)color isValid:(BOOL *)valid;
- ($F24F406B2B787EFB06265DBA3D28CBD5)supportedRange;
- (HUTemperatureColorWheelSpace)init;
- (HUTemperatureColorWheelSpace)initWithSupportedRange:(id)range;
@end

@implementation HUTemperatureColorWheelSpace

+ ($F24F406B2B787EFB06265DBA3D28CBD5)defaultTemperatureRange
{
  v2 = 2400.0;
  v3 = 10000.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)largestAllowableTemperatureRange
{
  v2 = 1000.0;
  v3 = 40000.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (HUTemperatureColorWheelSpace)initWithSupportedRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v7.receiver = self;
  v7.super_class = HUTemperatureColorWheelSpace;
  result = [(HUTemperatureColorWheelSpace *)&v7 init];
  if (result)
  {
    v6 = 1000.0;
    if (var0 >= 1000.0)
    {
      v6 = var0;
    }

    result->_supportedRange.minimum = v6;
    result->_supportedRange.maximum = fmin(var1, 40000.0);
  }

  return result;
}

- (HUTemperatureColorWheelSpace)init
{
  [objc_opt_class() defaultTemperatureRange];

  return [(HUTemperatureColorWheelSpace *)self initWithSupportedRange:?];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)colorForCoordinate:(id)coordinate
{
  var0 = coordinate.var0;
  if (coordinate.var0 < 0.0 || coordinate.var0 > 1.0)
  {
    NSLog(&cfstr_InputCoordinat.isa, a2, *&coordinate.var0);
  }

    ;
  }

  v7 = i + i;
  if (v7 > 1.0)
  {
    v7 = 2.0 - v7;
  }

  if (v7 >= 0.525)
  {
    v9 = (v7 + -0.525) / 0.475;
    v10 = v9 * (v9 * v9) + v9 * ((1.0 - v9) * ((1.0 - v9) * 3.0)) * 0.25 + (1.0 - v9) * ((1.0 - v9) * (1.0 - v9)) * 0.0 + v9 * (v9 * ((1.0 - v9) * 3.0)) * 0.95;
    [(HUTemperatureColorWheelSpace *)self supportedRange];
    v8 = (v11 + -6600.0) * v10 + 6600.0;
  }

  else if (v7 <= 0.475)
  {
    v12 = v7 / 0.475;
    v13 = v12 * (v12 * v12) + v12 * ((1.0 - v12) * ((1.0 - v12) * 3.0)) * 0.05 + (1.0 - v12) * ((1.0 - v12) * (1.0 - v12)) * 0.0 + v12 * (v12 * ((1.0 - v12) * 3.0)) * 0.75;
    [(HUTemperatureColorWheelSpace *)self supportedRange];
    v15 = v14;
    [(HUTemperatureColorWheelSpace *)self supportedRange];
    v8 = v15 + (6600.0 - v16) * v13;
  }

  else
  {
    v8 = 6600.0;
  }

  HFGetColorForLightTemperature();
  v18 = *(&HUWheelColorInvalid + 1);
  v17 = *&HUWheelColorInvalid;
  v19 = 1.79769313e308;
  v20 = v8;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateForColor:(id)color isValid:(BOOL *)valid
{
  if (color.var3 == 1.79769313e308)
  {
    if (valid)
    {
      *valid = 0;
    }

    v4 = 1.79769313e308;
    goto LABEL_18;
  }

  var3 = color.var3;
  [(HUTemperatureColorWheelSpace *)self supportedRange];
  v8 = fmax(var3, v7);
  [(HUTemperatureColorWheelSpace *)self supportedRange];
  v17[1] = 3221225472;
  v17[0] = MEMORY[0x277D85DD0];
  v17[2] = __59__HUTemperatureColorWheelSpace_coordinateForColor_isValid___block_invoke;
  v17[3] = &unk_277DC25D8;
  v10 = fmin(v8, v9);
  *&v17[5] = v10;
  v17[4] = self;
  __59__HUTemperatureColorWheelSpace_coordinateForColor_isValid___block_invoke(v17);
  v12 = v11 * 0.5 + 0.25;
  if ([(HUTemperatureColorWheelSpace *)self mirroringBiasAxis]== 1)
  {
    v4 = 0.5 - v12;
  }

  else
  {
    v4 = v12;
  }

  v13 = 1.0;
  if (v4 <= 1.0)
  {
    if (v4 >= 0.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = -1.0;
  }

  v4 = v4 + v13;
LABEL_12:
  if (v4 < 0.0 || v4 > 1.0)
  {
    NSLog(&cfstr_InvalidAngleFo.isa, *&v10);
  }

LABEL_18:
  v15 = 1.79769313e308;
  v16 = v4;
  result.var1 = v15;
  result.var0 = v16;
  return result;
}

void __59__HUTemperatureColorWheelSpace_coordinateForColor_isValid___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 <= 6600.0)
  {
    if (v1 < 6600.0)
    {
      [*(a1 + 32) supportedRange];
      v5 = (v1 - v4) / (6600.0 - v4);
      if (qword_281122078 != -1)
      {
        dispatch_once(&qword_281122078, &__block_literal_global_82_1);
      }

      HUApproximatelyInverseCubicBezierWithSamples(v5, &HULowTemperatureSmoothingBezierCurvePoints, &unk_281122120, 20);
    }
  }

  else
  {
    [*(a1 + 32) supportedRange];
    v3 = (v1 + -6600.0) / (v2 + -6600.0);
    if (_MergedGlobals_636 != -1)
    {
      dispatch_once(&_MergedGlobals_636, &__block_literal_global_268);
    }

    HUApproximatelyInverseCubicBezierWithSamples(v3, &HUHighTemperatureSmoothingBezierCurvePoints, &unk_281122080, 20);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)supportedRange
{
  minimum = self->_supportedRange.minimum;
  maximum = self->_supportedRange.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end