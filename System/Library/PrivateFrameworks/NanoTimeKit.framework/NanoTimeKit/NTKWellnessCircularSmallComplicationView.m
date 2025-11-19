@interface NTKWellnessCircularSmallComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKWellnessCircularSmallComplicationView)initWithFrame:(CGRect)a3;
- (double)_overlapStrokeWidth;
- (double)_ringDiameter;
- (double)_ringGapWidth;
- (double)_ringStrokeWidth;
- (void)_setLayoutEmptyRings;
- (void)_updateColors;
- (void)_updateForTemplateChange;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)a3;
- (void)setUsesMultiColor:(BOOL)a3;
@end

@implementation NTKWellnessCircularSmallComplicationView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isCompatibleWithFamily:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NTKWellnessCircularSmallComplicationView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = NTKWellnessCircularSmallComplicationView;
  v3 = [(NTKCircularComplicationView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NTKRingsAndDotsView emptyFillFractions];
    v5 = [v4 mutableCopy];
    ringsFillFractions = v3->_ringsFillFractions;
    v3->_ringsFillFractions = v5;

    v7 = [NTKRingsAndDotsView alloc];
    [(NTKWellnessCircularSmallComplicationView *)v3 _ringDiameter];
    v9 = v8;
    [(NTKWellnessCircularSmallComplicationView *)v3 _ringStrokeWidth];
    v11 = v10;
    [(NTKWellnessCircularSmallComplicationView *)v3 _ringGapWidth];
    v13 = v12;
    [(NTKWellnessCircularSmallComplicationView *)v3 _overlapStrokeWidth];
    v15 = [(NTKRingsAndDotsView *)v7 initWithFrame:*MEMORY[0x277CBF3A0] diameter:*(MEMORY[0x277CBF3A0] + 8) ringWidth:*(MEMORY[0x277CBF3A0] + 16) ringGapWidth:*(MEMORY[0x277CBF3A0] + 24) overlapStrokeWidth:v9, v11, v13, v14];
    ringsView = v3->_ringsView;
    v3->_ringsView = v15;

    [(NTKRingsAndDotsView *)v3->_ringsView setRingsFillFractions:v3->_ringsFillFractions];
    [(NTKRingsAndDotsView *)v3->_ringsView setUserInteractionEnabled:0];
    [(NTKWellnessCircularSmallComplicationView *)v3 addSubview:v3->_ringsView];
    [(NTKCircularComplicationView *)v3 setWantsPlatter:0];
  }

  return v3;
}

- (double)_ringDiameter
{
  if ([(NTKCircularComplicationView *)self usesMediumLayout])
  {
    [(NTKCircularComplicationView *)self _layoutConstants];
    return v6;
  }

  else
  {
    v4 = [(NTKCircularComplicationView *)self device];
    v5 = NTKCircularSmallComplicationDiameter();

    return v5;
  }
}

- (double)_ringStrokeWidth
{
  v3 = [(NTKCircularComplicationView *)self device];
  v4 = __60__NTKWellnessCircularSmallComplicationView__ringStrokeWidth__block_invoke(v3, v3);

  if (![(NTKCircularComplicationView *)self usesMediumLayout])
  {
    [(NTKCircularComplicationView *)self _layoutConstants];
    return v6;
  }

  return v4;
}

double __60__NTKWellnessCircularSmallComplicationView__ringStrokeWidth__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_5_lock_0);
  if (_block_invoke_5___cachedDevice_0)
  {
    v3 = _block_invoke_5___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_5___previousCLKDeviceVersion_0))
  {
    v5 = _block_invoke_5_value_0;
  }

  else
  {
    _block_invoke_5___cachedDevice_0 = v2;
    _block_invoke_5___previousCLKDeviceVersion_0 = [v2 version];
    v5 = __60__NTKWellnessCircularSmallComplicationView__ringStrokeWidth__block_invoke_2(_block_invoke_5___previousCLKDeviceVersion_0, v2);
    _block_invoke_5_value_0 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_5_lock_0);

  return *&v5;
}

double __60__NTKWellnessCircularSmallComplicationView__ringStrokeWidth__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:0 withOverride:4.0 forSizeClass:3.0];
  v4 = v3;

  return v4;
}

- (double)_ringGapWidth
{
  v3 = [(NTKCircularComplicationView *)self device];
  v4 = __57__NTKWellnessCircularSmallComplicationView__ringGapWidth__block_invoke(v3, v3);

  v5 = [(NTKCircularComplicationView *)self usesMediumLayout];
  result = 2.0;
  if (v5)
  {
    return v4;
  }

  return result;
}

double __57__NTKWellnessCircularSmallComplicationView__ringGapWidth__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_6_lock);
  if (_block_invoke_6___cachedDevice)
  {
    v3 = _block_invoke_6___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_6___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_6_value;
  }

  else
  {
    _block_invoke_6___cachedDevice = v2;
    _block_invoke_6___previousCLKDeviceVersion = [v2 version];
    v5 = __57__NTKWellnessCircularSmallComplicationView__ringGapWidth__block_invoke_2(_block_invoke_6___previousCLKDeviceVersion, v2);
    _block_invoke_6_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_6_lock);

  return *&v5;
}

double __57__NTKWellnessCircularSmallComplicationView__ringGapWidth__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284185650;
  v7[1] = &unk_284185668;
  v8[0] = &unk_284189278;
  v8[1] = &unk_284189288;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:2.0];
  v5 = v4;

  return v5;
}

- (double)_overlapStrokeWidth
{
  v3 = [(NTKCircularComplicationView *)self device];
  v4 = __63__NTKWellnessCircularSmallComplicationView__overlapStrokeWidth__block_invoke(v3, v3);

  v5 = [(NTKCircularComplicationView *)self usesMediumLayout];
  result = 1.75;
  if (v5)
  {
    return v4;
  }

  return result;
}

double __63__NTKWellnessCircularSmallComplicationView__overlapStrokeWidth__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_7_lock);
  if (_block_invoke_7___cachedDevice)
  {
    v3 = _block_invoke_7___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_7___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_7_value;
  }

  else
  {
    _block_invoke_7___cachedDevice = v2;
    _block_invoke_7___previousCLKDeviceVersion = [v2 version];
    v5 = __63__NTKWellnessCircularSmallComplicationView__overlapStrokeWidth__block_invoke_2(_block_invoke_7___previousCLKDeviceVersion, v2);
    _block_invoke_7_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_7_lock);

  return *&v5;
}

double __63__NTKWellnessCircularSmallComplicationView__overlapStrokeWidth__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284185650;
  v7[1] = &unk_284185668;
  v8[0] = &unk_284189288;
  v8[1] = &unk_284189298;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:3.5];
  v5 = v4;

  return v5 * 0.5;
}

- (void)setForegroundColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKWellnessCircularSmallComplicationView;
  [(NTKCircularComplicationView *)&v4 setForegroundColor:a3];
  [(NTKWellnessCircularSmallComplicationView *)self _updateColors];
}

- (void)setUsesMultiColor:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKWellnessCircularSmallComplicationView;
  [(NTKCircularComplicationView *)&v4 setUsesMultiColor:a3];
  [(NTKWellnessCircularSmallComplicationView *)self _updateColors];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NTKWellnessCircularSmallComplicationView;
  [(NTKCircularComplicationView *)&v9 layoutSubviews];
  [(NTKWellnessCircularSmallComplicationView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  ringsView = self->_ringsView;
  v8 = CGRectGetHeight(v10) * 0.5;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  [(NTKRingsAndDotsView *)ringsView setCenter:v8, CGRectGetWidth(v11) * 0.5];
}

- (void)_updateForTemplateChange
{
  v20.receiver = self;
  v20.super_class = NTKWellnessCircularSmallComplicationView;
  [(NTKCircularComplicationView *)&v20 _updateForTemplateChange];
  v3 = [(NTKCircularComplicationView *)self complicationTemplate];
  if (![v3 dotsAreHidden])
  {
    v4 = MEMORY[0x277CCABB0];
    [v3 movePercentComplete];
    if (v5 < 0.00000011920929)
    {
      v5 = 0.00000011920929;
    }

    v6 = [v4 numberWithDouble:v5];
    v7 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:0];
    v8 = [v6 isEqualToNumber:v7];

    if ((v8 & 1) == 0)
    {
      [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:0 withObject:v6];
    }

    v9 = MEMORY[0x277CCABB0];
    [v3 exercisePercentComplete];
    if (v10 < 0.00000011920929)
    {
      v10 = 0.00000011920929;
    }

    v11 = [v9 numberWithDouble:v10];
    v12 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:1];
    v13 = [v11 isEqualToNumber:v12];

    if (v13)
    {
      v14 = v8 ^ 1;
    }

    else
    {
      v14 = 1;
      [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:1 withObject:v11];
    }

    v15 = MEMORY[0x277CCABB0];
    [v3 standPercentComplete];
    if (v16 < 0.00000011920929)
    {
      v16 = 0.00000011920929;
    }

    v17 = [v15 numberWithDouble:v16];
    v18 = [(NSMutableArray *)self->_ringsFillFractions objectAtIndexedSubscript:2];
    v19 = [v17 isEqualToNumber:v18];

    if (v19)
    {
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [(NSMutableArray *)self->_ringsFillFractions replaceObjectAtIndex:2 withObject:v17];
    }

    [(NTKRingsAndDotsView *)self->_ringsView setRingsFillFractions:self->_ringsFillFractions];
LABEL_19:

    goto LABEL_20;
  }

  [(NTKWellnessCircularSmallComplicationView *)self _setLayoutEmptyRings];
LABEL_20:
}

- (void)_setLayoutEmptyRings
{
  v3 = +[NTKRingsAndDotsView emptyFillFractions];
  v4 = [v3 mutableCopy];
  ringsFillFractions = self->_ringsFillFractions;
  self->_ringsFillFractions = v4;

  ringsView = self->_ringsView;
  v7 = self->_ringsFillFractions;

  [(NTKRingsAndDotsView *)ringsView setRingsFillFractions:v7];
}

- (void)_updateColors
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [(NTKCircularComplicationView *)self usesMultiColor];
  ringsView = self->_ringsView;
  if (v3)
  {
    v5 = NTKMoveNonGradientTextColor();
    v10[0] = v5;
    v6 = NTKStandNonGradientTextColor();
    v10[1] = v6;
    v7 = NTKExerciseNonGradientTextColor();
    v10[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    [(NTKRingsAndDotsView *)ringsView setRingColors:v8];
  }

  else
  {
    v9 = [(NTKCircularComplicationView *)self _computedForegroundColor];
    [(NTKRingsAndDotsView *)ringsView setForegroundColor:?];
  }
}

@end