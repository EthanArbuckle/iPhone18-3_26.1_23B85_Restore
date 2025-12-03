@interface CUIShapeEffectPreset
+ (_CUIVibrantColorMatrixOptions)monochromeVibrantColorMatrixOptions;
+ (_CUIVibrantColorMatrixOptions)standardVibrantColorMatrixOptionsForColor:(SEL)color;
+ (_CUIVibrantColorMatrixOptions)vibrantColorMatrixOptionsWithColor:(SEL)color saturation:(CGColor *)saturation brightness:(double)brightness;
+ (id)caFilterFromCUIEffectBlendMode:(unsigned int)mode;
+ (id)requiredEffectParametersForEffectType:(unsigned int)type;
+ (int)cgBlendModeFromCUIEffectBlendMode:(unsigned int)mode;
+ (unsigned)cuiEffectBlendModeFromCGBlendMode:(int)mode;
+ (void)configureVibrantColorMatrixFilter:(id)filter withOptions:(_CUIVibrantColorMatrixOptions *)options;
- ($ADFAF175FB2F7D6E2A77149C0E7BB12A)valueForParameter:(unsigned int)parameter inEffectAtIndex:(unint64_t)index;
- (CUIShapeEffectPreset)init;
- (CUIShapeEffectPreset)initWithConstantPreset:(id *)preset;
- (CUIShapeEffectPreset)initWithEffectScale:(double)scale;
- (id)CUIEffectDataRepresentation;
- (id)debugDescription;
- (id)layerEffectsRepresentation;
- (uint64_t)setScaleFactor:(uint64_t)result;
- (unint64_t)_parameterCount;
- (unint64_t)effectCount;
- (unsigned)effectTypeAtIndex:(unint64_t)index;
- (void)_insertEffectTuple:(id)tuple atEffectIndex:(unint64_t)index;
- (void)addBevelEmbossWithHighlightColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity shadowColorRed:(unsigned int)colorRed green:(unsigned int)a8 blue:(unsigned int)a9 opacity:(double)self0 blur:(int)self1 soften:(int)self2 bevelStyle:(unsigned int)self3;
- (void)addColorFillWithRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blendMode:(unsigned int)mode tintable:(BOOL)tintable;
- (void)addDropShadowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur spread:(int)spread offset:(int)offset angle:(int)self0;
- (void)addEffectsFromPreset:(id)preset;
- (void)addExtraShadowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur spread:(int)spread offset:(int)offset angle:(int)self0;
- (void)addGradientFillWithTopColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue bottomColorRed:(unsigned int)colorRed green:(unsigned int)a7 blue:(unsigned int)a8 opacity:(double)opacity blendMode:(unsigned int)self0;
- (void)addHueSaturationWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue angle:(int)angle width:(int)width tintable:(BOOL)tintable;
- (void)addInnerGlowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur blendMode:(unsigned int)mode;
- (void)addInnerShadowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur offset:(int)offset angle:(int)angle blendMode:(unsigned int)self0;
- (void)addOuterGlowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur spread:(int)spread;
- (void)addValue:(id)value forParameter:(unsigned int)parameter withEffectType:(unsigned int)type atEffectIndex:(unint64_t)index;
- (void)addValue:(id)value forParameter:(unsigned int)parameter withNewEffectType:(unsigned int)type;
- (void)appendValue:(id)value forParameter:(unsigned int)parameter withEffectType:(unsigned int)type;
- (void)getEffectTuples:(id *)tuples count:(unint64_t *)count atEffectIndex:(unint64_t)index;
@end

@implementation CUIShapeEffectPreset

- (id)layerEffectsRepresentation
{
  v3 = objc_alloc_init(CUIPSDLayerEffects);
  effectCount = [(CUIShapeEffectPreset *)self effectCount];
  if (effectCount)
  {
    v5 = effectCount;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(CUIShapeEffectPreset *)self effectTypeAtIndex:v6];
      if (v8 <= 1198678371)
      {
        switch(v8)
        {
          case 1131375730:
            v9 = OBJC_CLASS___CUIPSDLayerEffectColorOverlay_ptr;
            goto LABEL_19;
          case 1148350320:
            v9 = OBJC_CLASS___CUIPSDLayerEffectDropShadow_ptr;
            goto LABEL_19;
          case 1164796531:
            v9 = OBJC_CLASS___CUIPSDLayerEffectBevelEmboss_ptr;
            goto LABEL_19;
        }
      }

      else if (v8 > 1768837991)
      {
        if (v8 == 1768837992)
        {
          v9 = OBJC_CLASS___CUIPSDLayerEffectInnerShadow_ptr;
          goto LABEL_19;
        }

        if (v8 == 1866951799)
        {
          v9 = OBJC_CLASS___CUIPSDLayerEffectOuterGlow_ptr;
          goto LABEL_19;
        }
      }

      else
      {
        if (v8 == 1198678372)
        {
          v9 = OBJC_CLASS___CUIPSDLayerEffectGradientOverlay_ptr;
          goto LABEL_19;
        }

        if (v8 == 1766288503)
        {
          v9 = OBJC_CLASS___CUIPSDLayerEffectInnerGlow_ptr;
LABEL_19:
          v10 = [objc_alloc(*v9) initWithEffectFromPreset:self atIndex:v7];
          [(CUIPSDLayerEffects *)v3 addLayerEffectComponent:v10];
        }
      }

      v6 = (v7 + 1);
      v7 = v6;
    }

    while (v5 > v6);
  }

  return v3;
}

- (CUIShapeEffectPreset)init
{
  v3.receiver = self;
  v3.super_class = CUIShapeEffectPreset;
  result = [(CUIShapeEffectPreset *)&v3 init];
  if (result)
  {
    result->_scaleFactor = 1.0;
    result->_minimumShadowSpread = 0.0;
  }

  return result;
}

- (CUIShapeEffectPreset)initWithEffectScale:(double)scale
{
  v5.receiver = self;
  v5.super_class = CUIShapeEffectPreset;
  result = [(CUIShapeEffectPreset *)&v5 init];
  if (result)
  {
    result->_scaleFactor = scale;
    result->_minimumShadowSpread = 0.0;
  }

  return result;
}

+ (id)requiredEffectParametersForEffectType:(unsigned int)type
{
  if (type <= 1215653202)
  {
    if (type > 1164796530)
    {
      if (type == 1164796531)
      {
        return &unk_1F00F7F30;
      }

      if (type != 1180787813)
      {
        v3 = type == 1198678372;
        v4 = &unk_1F00F7EB8;
LABEL_10:
        if (v3)
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      return &unk_1F00F7E88;
    }

    v6 = 1131375730;
    v7 = &unk_1F00F7EA0;
    v9 = &unk_1F00F7F18;
    if (type != 1148350320)
    {
      v9 = 0;
    }
  }

  else
  {
    if (type <= 1766288502)
    {
      if (type == 1215653203)
      {
        return &unk_1F00F7F60;
      }

      if (type != 1397715043)
      {
        v3 = type == 1484026465;
        v4 = &unk_1F00F7F48;
        goto LABEL_10;
      }

      return &unk_1F00F7E88;
    }

    v6 = 1766288503;
    v7 = &unk_1F00F7ED0;
    if (type == 1866951799)
    {
      v8 = &unk_1F00F7F00;
    }

    else
    {
      v8 = 0;
    }

    if (type == 1768837992)
    {
      v9 = &unk_1F00F7EE8;
    }

    else
    {
      v9 = v8;
    }
  }

  if (type == v6)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)effectCount
{
  v2 = 0;
  do
  {
    v3 = v2;
  }

  while (self->_effectIndex[v2++]);
  return v3;
}

- (unsigned)effectTypeAtIndex:(unint64_t)index
{
  v5 = self + 4 * index;
  if (index > 0x18 || !*(v5 + 502))
  {
    [NSException raise:NSInvalidArgumentException format:@"Invalid effect index %lu for effect preset", index];
    if (index)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = 0;
    return self->_parameterList[v6].effectType;
  }

  if (!index)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = *(v5 + 501);
  return self->_parameterList[v6].effectType;
}

- ($ADFAF175FB2F7D6E2A77149C0E7BB12A)valueForParameter:(unsigned int)parameter inEffectAtIndex:(unint64_t)index
{
  if (parameter == 6)
  {
    v7 = 90;
  }

  else
  {
    v7 = 0;
  }

  v8 = self + 4 * index;
  if (index <= 0x18 && *(v8 + 502))
  {
    if (index)
    {
LABEL_7:
      v9 = *(v8 + 501);
      goto LABEL_10;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Invalid effect index %lu for effect preset", index];
    if (index)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_10:
  v10 = *(v8 + 502);
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
LABEL_14:
    v14 = 0;
  }

  else
  {
    v13 = (&self->_parameterList[v9].effectValue.intValue + 2);
    while (*(v13 - 6) != parameter)
    {
      v13 += 4;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    v7 = *(v13 - 1);
    v14 = (*v13 << 16) | (*(v13 + 2) << 48);
  }

  return (v14 | v7);
}

- (void)_insertEffectTuple:(id)tuple atEffectIndex:(unint64_t)index
{
  effectIndex = self->_effectIndex;
  v5 = self->_effectIndex[index];
  v6 = self->_effectIndex[index + 1];
  if (index && !v5)
  {
    v7 = &effectIndex[index];
    v5 = *(v7 - 1);
    *v7 = v5;
  }

  if (v6 >= 1 && index + 1 <= 0x18)
  {
    indexCopy = index;
    do
    {
      ++self->_effectIndex[++indexCopy];
    }

    while (indexCopy != 24);
  }

  self->_parameterList[v5] = tuple;
  ++effectIndex[index];
}

- (void)getEffectTuples:(id *)tuples count:(unint64_t *)count atEffectIndex:(unint64_t)index
{
  v9 = self + 4 * index;
  if (index <= 0x18 && *(v9 + 502))
  {
    if (index)
    {
LABEL_4:
      v10 = *(v9 + 501);
      goto LABEL_7;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Invalid effect index %lu for effect preset", index];
    if (index)
    {
      goto LABEL_4;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = *(v9 + 502);
  if (tuples)
  {
    *tuples = &self->_parameterList[v10];
  }

  if (count)
  {
    *count = v11 - v10;
  }
}

- (void)addValue:(id)value forParameter:(unsigned int)parameter withEffectType:(unsigned int)type atEffectIndex:(unint64_t)index
{
  v8 = *&parameter;
  v11 = self + 4 * index;
  if (index >= 0x19)
  {
    [NSException raise:NSRangeException format:@"Invalid effect index %lu for effect preset", index];
LABEL_4:
    v12 = *(v11 + 501);
    goto LABEL_5;
  }

  if (index)
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_5:
  if (self->_parameterList[v12].effectType != type && *(v11 + 502) >= 1)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Attempt to add an effect with incompatible type at index %lu", index];
  }

  [(CUIShapeEffectPreset *)self _insertEffectTuple:type | (v8 << 32) atEffectIndex:value.var1, index];
}

- (void)appendValue:(id)value forParameter:(unsigned int)parameter withEffectType:(unsigned int)type
{
  v5 = *&type;
  v6 = *&parameter;
  [(CUIShapeEffectPreset *)self effectCount];

  [(CUIShapeEffectPreset *)self addValue:value.var1 forParameter:v6 withEffectType:v5 atEffectIndex:?];
}

- (void)addValue:(id)value forParameter:(unsigned int)parameter withNewEffectType:(unsigned int)type
{
  v5 = *&type;
  v6 = *&parameter;
  effectCount = [(CUIShapeEffectPreset *)self effectCount];

  [(CUIShapeEffectPreset *)self addValue:value.var1 forParameter:v6 withEffectType:v5 atEffectIndex:effectCount];
}

- (void)addColorFillWithRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blendMode:(unsigned int)mode tintable:(BOOL)tintable
{
  tintableCopy = tintable;
  v9 = *&mode;
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1131375730];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1131375730 withEffectType:opacity];
  [(CUIShapeEffectPreset *)self appendEnumValue:v9 forParameter:7 withEffectType:1131375730];

  [(CUIShapeEffectPreset *)self appendEnumValue:tintableCopy forParameter:10 withEffectType:1131375730];
}

- (void)addGradientFillWithTopColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue bottomColorRed:(unsigned int)colorRed green:(unsigned int)a7 blue:(unsigned int)a8 opacity:(double)opacity blendMode:(unsigned int)self0
{
  v11 = *&a8;
  v12 = *&a7;
  v13 = *&colorRed;
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1198678372];
  [(CUIShapeEffectPreset *)self appendColorValueRed:v13 green:v12 blue:v11 forParameter:1 withEffectType:1198678372];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1198678372 withEffectType:opacity];

  [(CUIShapeEffectPreset *)self appendEnumValue:mode forParameter:7 withEffectType:1198678372];
}

- (void)addInnerGlowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur blendMode:(unsigned int)mode
{
  v8 = *&mode;
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1766288503];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1766288503 withEffectType:opacity];
  [(CUIShapeEffectPreset *)self appendIntValue:blur forParameter:4 withEffectType:1766288503];

  [(CUIShapeEffectPreset *)self appendEnumValue:v8 forParameter:7 withEffectType:1766288503];
}

- (void)addInnerShadowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur offset:(int)offset angle:(int)angle blendMode:(unsigned int)self0
{
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1768837992];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1768837992 withEffectType:opacity];
  [(CUIShapeEffectPreset *)self appendIntValue:blur forParameter:4 withEffectType:1768837992];
  [(CUIShapeEffectPreset *)self appendIntValue:offset forParameter:5 withEffectType:1768837992];
  [(CUIShapeEffectPreset *)self appendAngleValue:angle forParameter:6 withEffectType:1768837992];

  [(CUIShapeEffectPreset *)self appendEnumValue:mode forParameter:7 withEffectType:1768837992];
}

- (void)addOuterGlowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur spread:(int)spread
{
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1866951799];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1866951799 withEffectType:opacity];
  [(CUIShapeEffectPreset *)self appendIntValue:blur forParameter:4 withEffectType:1866951799];

  [(CUIShapeEffectPreset *)self appendIntValue:spread forParameter:9 withEffectType:1866951799];
}

- (void)addDropShadowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur spread:(int)spread offset:(int)offset angle:(int)self0
{
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1148350320];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1148350320 withEffectType:opacity];
  [(CUIShapeEffectPreset *)self appendIntValue:blur forParameter:4 withEffectType:1148350320];
  [(CUIShapeEffectPreset *)self appendIntValue:spread forParameter:9 withEffectType:1148350320];
  [(CUIShapeEffectPreset *)self appendIntValue:offset forParameter:5 withEffectType:1148350320];

  [(CUIShapeEffectPreset *)self appendAngleValue:angle forParameter:6 withEffectType:1148350320];
}

- (void)addExtraShadowWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity blur:(int)blur spread:(int)spread offset:(int)offset angle:(int)self0
{
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1484026465];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1484026465 withEffectType:opacity];
  [(CUIShapeEffectPreset *)self appendIntValue:blur forParameter:4 withEffectType:1484026465];
  [(CUIShapeEffectPreset *)self appendIntValue:spread forParameter:9 withEffectType:1484026465];
  [(CUIShapeEffectPreset *)self appendIntValue:offset forParameter:5 withEffectType:1484026465];

  [(CUIShapeEffectPreset *)self appendAngleValue:angle forParameter:6 withEffectType:1484026465];
}

- (void)addBevelEmbossWithHighlightColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue opacity:(double)opacity shadowColorRed:(unsigned int)colorRed green:(unsigned int)a8 blue:(unsigned int)a9 opacity:(double)self0 blur:(int)self1 soften:(int)self2 bevelStyle:(unsigned int)self3
{
  v14 = *&a9;
  v15 = *&a8;
  v16 = *&colorRed;
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1164796531];
  [(CUIShapeEffectPreset *)self appendFloatValue:2 forParameter:1164796531 withEffectType:opacity];
  [(CUIShapeEffectPreset *)self appendColorValueRed:v16 green:v15 blue:v14 forParameter:1 withEffectType:1164796531];
  [(CUIShapeEffectPreset *)self appendFloatValue:3 forParameter:1164796531 withEffectType:a10];
  [(CUIShapeEffectPreset *)self appendIntValue:blur forParameter:4 withEffectType:1164796531];
  [(CUIShapeEffectPreset *)self appendIntValue:soften forParameter:8 withEffectType:1164796531];

  [(CUIShapeEffectPreset *)self appendEnumValue:style forParameter:11 withEffectType:1164796531];
}

- (void)addHueSaturationWithColorRed:(unsigned int)red green:(unsigned int)green blue:(unsigned int)blue angle:(int)angle width:(int)width tintable:(BOOL)tintable
{
  tintableCopy = tintable;
  [(CUIShapeEffectPreset *)self addColorValueRed:*&red green:*&green blue:*&blue forParameter:0 withNewEffectType:1215653203];
  [(CUIShapeEffectPreset *)self appendAngleValue:angle forParameter:6 withEffectType:1215653203];
  [(CUIShapeEffectPreset *)self appendIntValue:width forParameter:5 withEffectType:1215653203];

  [(CUIShapeEffectPreset *)self appendEnumValue:tintableCopy forParameter:10 withEffectType:1215653203];
}

- (void)addEffectsFromPreset:(id)preset
{
  effectCount = [preset effectCount];
  if (effectCount)
  {
    v6 = effectCount;
    v7 = 0;
    v86 = effectCount;
    selfCopy = self;
    do
    {
      v8 = [preset effectTypeAtIndex:v7];
      if (v8 <= 1215653202)
      {
        if (v8 <= 1164796530)
        {
          if (v8 == 1131375730)
          {
            v41 = [preset valueForParameter:7 inEffectAtIndex:v7];
            v42 = [preset valueForParameter:0 inEffectAtIndex:v7];
            v43 = v42;
            v44 = BYTE1(v42);
            v45 = BYTE2(v42);
            v46 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
            -[CUIShapeEffectPreset addColorFillWithRed:green:blue:opacity:blendMode:tintable:](self, "addColorFillWithRed:green:blue:opacity:blendMode:tintable:", v43, v44, v45, v41, [preset valueForParameter:10 inEffectAtIndex:v7] == 1, v46);
          }

          else if (v8 == 1148350320)
          {
            v33 = [preset valueForParameter:0 inEffectAtIndex:v7];
            v34 = v33;
            v35 = BYTE1(v33);
            v36 = BYTE2(v33);
            v37 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
            v38 = [preset valueForParameter:4 inEffectAtIndex:v7];
            v39 = [preset valueForParameter:9 inEffectAtIndex:v7];
            v40 = [preset valueForParameter:5 inEffectAtIndex:v7];
            LODWORD(v84) = [preset valueForParameter:6 inEffectAtIndex:v7];
            [(CUIShapeEffectPreset *)self addDropShadowWithColorRed:v34 green:v35 blue:v36 opacity:v38 blur:v39 spread:v40 offset:v37 angle:v84];
          }
        }

        else
        {
          switch(v8)
          {
            case 1164796531:
              v55 = [preset valueForParameter:4 inEffectAtIndex:v7];
              v56 = [preset valueForParameter:8 inEffectAtIndex:v7];
              v57 = [preset valueForParameter:0 inEffectAtIndex:v7];
              v58 = v57;
              v59 = BYTE1(v57);
              v60 = BYTE2(v57);
              v61 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
              v62 = [preset valueForParameter:1 inEffectAtIndex:v7];
              v63 = v62;
              v64 = BYTE1(v62);
              v65 = BYTE2(v62);
              v66 = COERCE_DOUBLE([preset valueForParameter:3 inEffectAtIndex:v7]);
              LODWORD(v85) = [preset valueForParameter:11 inEffectAtIndex:v7];
              v67 = v64;
              self = selfCopy;
              v68 = v65;
              v6 = v86;
              [(CUIShapeEffectPreset *)selfCopy addBevelEmbossWithHighlightColorRed:v58 green:v59 blue:v60 opacity:v63 shadowColorRed:v67 green:v68 blue:v61 opacity:v66 blur:__PAIR64__(v56 soften:v55) bevelStyle:v85];
              break;
            case 1180787813:
              v47 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
              [(CUIShapeEffectPreset *)self addOutputOpacityWithOpacity:v47];
              break;
            case 1198678372:
              v19 = [preset valueForParameter:0 inEffectAtIndex:v7];
              v20 = v19;
              v21 = BYTE1(v19);
              v22 = BYTE2(v19);
              v23 = [preset valueForParameter:1 inEffectAtIndex:v7];
              v24 = v23;
              v25 = BYTE1(v23);
              v26 = BYTE2(v23);
              v27 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
              LODWORD(v84) = [preset valueForParameter:7 inEffectAtIndex:v7];
              [(CUIShapeEffectPreset *)self addGradientFillWithTopColorRed:v20 green:v21 blue:v22 bottomColorRed:v24 green:v25 blue:v26 opacity:v27 blendMode:v84];
              break;
          }
        }
      }

      else if (v8 > 1766288502)
      {
        switch(v8)
        {
          case 1766288503:
            v78 = [preset valueForParameter:7 inEffectAtIndex:v7];
            v79 = [preset valueForParameter:0 inEffectAtIndex:v7];
            v80 = v79;
            v81 = BYTE1(v79);
            v82 = BYTE2(v79);
            v83 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
            -[CUIShapeEffectPreset addInnerGlowWithColorRed:green:blue:opacity:blur:blendMode:](self, "addInnerGlowWithColorRed:green:blue:opacity:blur:blendMode:", v80, v81, v82, [preset valueForParameter:4 inEffectAtIndex:v7], v78, v83);
            break;
          case 1768837992:
            v49 = [preset valueForParameter:7 inEffectAtIndex:v7];
            v50 = [preset valueForParameter:0 inEffectAtIndex:v7];
            v51 = v50;
            v52 = BYTE1(v50);
            v53 = BYTE2(v50);
            v54 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
            LODWORD(v84) = v49;
            -[CUIShapeEffectPreset addInnerShadowWithColorRed:green:blue:opacity:blur:offset:angle:blendMode:](self, "addInnerShadowWithColorRed:green:blue:opacity:blur:offset:angle:blendMode:", v51, v52, v53, [preset valueForParameter:4 inEffectAtIndex:v7], objc_msgSend(preset, "valueForParameter:inEffectAtIndex:", 5, v7), objc_msgSend(preset, "valueForParameter:inEffectAtIndex:", 6, v7), v54, v84);
            break;
          case 1866951799:
            v28 = [preset valueForParameter:0 inEffectAtIndex:v7];
            v29 = v28;
            v30 = BYTE1(v28);
            v31 = BYTE2(v28);
            v32 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
            -[CUIShapeEffectPreset addOuterGlowWithColorRed:green:blue:opacity:blur:spread:](self, "addOuterGlowWithColorRed:green:blue:opacity:blur:spread:", v29, v30, v31, [preset valueForParameter:4 inEffectAtIndex:v7], objc_msgSend(preset, "valueForParameter:inEffectAtIndex:", 9, v7), v32);
            break;
        }
      }

      else
      {
        switch(v8)
        {
          case 1215653203:
            v69 = [preset valueForParameter:0 inEffectAtIndex:v7];
            v70 = v69;
            v71 = BYTE1(v69);
            v72 = BYTE2(v69);
            v73 = [preset valueForParameter:6 inEffectAtIndex:v7];
            v74 = [preset valueForParameter:5 inEffectAtIndex:v7];
            v75 = [preset valueForParameter:10 inEffectAtIndex:v7] == 1;
            v76 = v70;
            self = selfCopy;
            v77 = v71;
            v6 = v86;
            [(CUIShapeEffectPreset *)selfCopy addHueSaturationWithColorRed:v76 green:v77 blue:v72 angle:v73 width:v74 tintable:v75];
            break;
          case 1397715043:
            v48 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
            [(CUIShapeEffectPreset *)self addShapeOpacityWithOpacity:v48];
            break;
          case 1484026465:
            v9 = [preset valueForParameter:0 inEffectAtIndex:v7];
            v10 = v9;
            v11 = BYTE1(v9);
            v12 = BYTE2(v9);
            v13 = COERCE_DOUBLE([preset valueForParameter:2 inEffectAtIndex:v7]);
            v14 = [preset valueForParameter:4 inEffectAtIndex:v7];
            v15 = [preset valueForParameter:9 inEffectAtIndex:v7];
            v16 = [preset valueForParameter:5 inEffectAtIndex:v7];
            LODWORD(v84) = [preset valueForParameter:6 inEffectAtIndex:v7];
            v17 = v10;
            self = selfCopy;
            v18 = v11;
            v6 = v86;
            [(CUIShapeEffectPreset *)selfCopy addExtraShadowWithColorRed:v17 green:v18 blue:v12 opacity:v14 blur:v15 spread:v16 offset:v13 angle:v84];
            break;
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }
}

- (id)debugDescription
{
  v86.receiver = self;
  v86.super_class = CUIShapeEffectPreset;
  v3 = [NSMutableString stringWithString:[(CUIShapeEffectPreset *)&v86 debugDescription]];
  [(NSMutableString *)v3 appendFormat:@"\nEffects: {\n"];
  effectCount = [(CUIShapeEffectPreset *)self effectCount];
  if (effectCount)
  {
    v5 = effectCount;
    v6 = 0;
    v84 = effectCount;
    v85 = 1852797549;
    do
    {
      v7 = [(CUIShapeEffectPreset *)self effectTypeAtIndex:v6];
      [(NSMutableString *)v3 appendString:@"\n\t"];
      if (v7 <= 1215653202)
      {
        if (v7 <= 1164796530)
        {
          if (v7 == 1131375730)
          {
            v32 = [(CUIShapeEffectPreset *)self valueForParameter:7 inEffectAtIndex:v6];
            v33.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
            r = v33.var2.r;
            g = v33.var2.g;
            b = v33.var2.b;
            v37 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
            v38 = [(CUIShapeEffectPreset *)self valueForParameter:10 inEffectAtIndex:v6];
            v39 = v37;
            v85 = v32;
            v40 = CUIEffectBlendModeToString(v32);
            v41 = @"NO";
            if (v38 == 1)
            {
              v41 = @"YES";
            }

            [(NSMutableString *)v3 appendFormat:@"Color Fill: r=%d, g=%d, b=%d, opacity=%.1f, blendMode=%@, tintable=%@", r, g, b, *&v39, v40, v41, v80, v81, v82];
          }

          else if (v7 == 1148350320)
          {
            v27.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
            v28 = v27.var2.r;
            v29 = v27.var2.g;
            v30 = v27.var2.b;
            v31 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
            v5 = v84;
            [(NSMutableString *)v3 appendFormat:@"Drop Shadow: r=%d, g=%d, b=%d, opacity=%.1f, blurSize=%d, spread=%d, offset=%d, angle=%d, blendMode=%@", v28, v29, v30, v31, [(CUIShapeEffectPreset *)self valueForParameter:4 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:9 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:5 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:6 inEffectAtIndex:v6], CUIEffectBlendModeToString(v85)];
          }
        }

        else
        {
          switch(v7)
          {
            case 1164796531:
              v49.var1 = [(CUIShapeEffectPreset *)self valueForParameter:4 inEffectAtIndex:v6];
              v50.var1 = [(CUIShapeEffectPreset *)self valueForParameter:8 inEffectAtIndex:v6];
              v51 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
              v52 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
              v53 = [(CUIShapeEffectPreset *)self valueForParameter:1 inEffectAtIndex:v6];
              v54 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:3 inEffectAtIndex:v6]);
              v55 = [(CUIShapeEffectPreset *)self valueForParameter:11 inEffectAtIndex:v6];
              v56 = CUIEffectBlendModeToString(v85);
              v57 = @"<unknown>";
              if (v55 <= 4)
              {
                v57 = off_1E72515F8[v55 & 7];
              }

              v58 = v52;
              v59 = v54;
              [(NSMutableString *)v3 appendFormat:@"Bevel Emboss: startR=%d, startG=%d, startB=%d, opacity=%.1f, endR=%d, endG=%d, endB=%d, endOpacity=%.1f, blendMode=%@, blurSize=%d, soften=%d, bevelStyle=%@", v51, BYTE1(v51), BYTE2(v51), v58, v53, BYTE1(v53), BYTE2(v53), v59, v56, v49.var1, v50.var1, v57];
              v5 = v84;
              break;
            case 1180787813:
              v42 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
              [(NSMutableString *)v3 appendFormat:@"Output Opacity=%.1f", v42, v75, v76, v77, v78, v79, v80, v81, v82];
              break;
            case 1198678372:
              v13.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
              v14 = v13.var2.r;
              v15 = v13.var2.g;
              v16 = v13.var2.b;
              v17.var1 = [(CUIShapeEffectPreset *)self valueForParameter:1 inEffectAtIndex:v6];
              v18 = v17.var2.r;
              v19 = v17.var2.g;
              v20 = v17.var2.b;
              v21 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
              v85 = [(CUIShapeEffectPreset *)self valueForParameter:7 inEffectAtIndex:v6];
              [(NSMutableString *)v3 appendFormat:@"Gradient Fill: r=%d, g=%d, b=%d, r=%d, g=%d, b=%d, opacity=%.1f, blendMode=%@", v14, v15, v16, v18, v19, v20, v21, CUIEffectBlendModeToString(v85), v82];
              break;
          }
        }
      }

      else if (v7 > 1766288502)
      {
        switch(v7)
        {
          case 1766288503:
            v68 = [(CUIShapeEffectPreset *)self valueForParameter:7 inEffectAtIndex:v6];
            v69.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
            v70 = v69.var2.r;
            v71 = v69.var2.g;
            v72 = v69.var2.b;
            v73 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
            v85 = v68;
            [(NSMutableString *)v3 appendFormat:@"Inner Glow: r=%d, g=%d, b=%d, opacity=%.1f, blurSize=%d, blendMode=%@", v70, v71, v72, v73, [(CUIShapeEffectPreset *)self valueForParameter:4 inEffectAtIndex:v6], CUIEffectBlendModeToString(v68), v80, v81, v82];
            break;
          case 1768837992:
            v44 = [(CUIShapeEffectPreset *)self valueForParameter:7 inEffectAtIndex:v6];
            v45.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
            v83 = v45.var2.r;
            v46 = v45.var2.g;
            v47 = v45.var2.b;
            v48 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
            v85 = v44;
            [(NSMutableString *)v3 appendFormat:@"Inner Shadow: r=%d, g=%d, b=%d, opacity=%.1f, blurSize=%d, offset=%d, angle=%d, blendMode=%@", v83, v46, v47, v48, [(CUIShapeEffectPreset *)self valueForParameter:4 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:5 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:6 inEffectAtIndex:v6], CUIEffectBlendModeToString(v44), v82];
            break;
          case 1866951799:
            v22.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
            v23 = v22.var2.r;
            v24 = v22.var2.g;
            v25 = v22.var2.b;
            v26 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
            [(NSMutableString *)v3 appendFormat:@"Outer Glow: r=%d, g=%d, b=%d, opacity=%.1f, blurSize=%d, spread=%d, blendMode=%@", v23, v24, v25, v26, [(CUIShapeEffectPreset *)self valueForParameter:4 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:9 inEffectAtIndex:v6], CUIEffectBlendModeToString(v85), v81, v82];
            break;
        }
      }

      else
      {
        switch(v7)
        {
          case 1215653203:
            v60.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
            v61 = v60.var2.r;
            v62 = v60.var2.g;
            v63 = v60.var2.b;
            v64 = [(CUIShapeEffectPreset *)self valueForParameter:6 inEffectAtIndex:v6];
            v65.var1 = [(CUIShapeEffectPreset *)self valueForParameter:5 inEffectAtIndex:v6];
            v66 = [(CUIShapeEffectPreset *)self valueForParameter:10 inEffectAtIndex:v6];
            v67 = @"NO";
            if (v66 == 1)
            {
              v67 = @"YES";
            }

            [(NSMutableString *)v3 appendFormat:@"Hue/Saturation: r=%d, g=%d, b=%d, angle=%d, width=%d, tintable=%@", v61, v62, v63, v64, v65.var1, v67, v80, v81, v82];
            break;
          case 1397715043:
            v43 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
            [(NSMutableString *)v3 appendFormat:@"Shape Opacity=%.1f", v43, v75, v76, v77, v78, v79, v80, v81, v82];
            break;
          case 1484026465:
            v8.var1 = [(CUIShapeEffectPreset *)self valueForParameter:0 inEffectAtIndex:v6];
            v9 = v8.var2.r;
            v10 = v8.var2.g;
            v11 = v8.var2.b;
            v12 = COERCE_DOUBLE([(CUIShapeEffectPreset *)self valueForParameter:2 inEffectAtIndex:v6]);
            v5 = v84;
            [(NSMutableString *)v3 appendFormat:@"Extra Shadow: r=%d, g=%d, b=%d, opacity=%.1f, blurSize=%d, spread=%d, offset=%d, angle=%d, blendMode=%@", v9, v10, v11, v12, [(CUIShapeEffectPreset *)self valueForParameter:4 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:9 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:5 inEffectAtIndex:v6], [(CUIShapeEffectPreset *)self valueForParameter:6 inEffectAtIndex:v6], CUIEffectBlendModeToString(v85)];
            break;
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  [(NSMutableString *)v3 appendString:@"\n}"];
  return v3;
}

+ (unsigned)cuiEffectBlendModeFromCGBlendMode:(int)mode
{
  if ((mode - 1) > 0x1A)
  {
    return 1852797549;
  }

  else
  {
    return dword_18E022258[mode - 1];
  }
}

+ (int)cgBlendModeFromCUIEffectBlendMode:(unsigned int)mode
{
  result = 0;
  if (mode > 1749838195)
  {
    if (mode > 1852797548)
    {
      if (mode > 1935897197)
      {
        if (mode > 1986227572)
        {
          if (mode != 1986227573 && mode != 1986229103)
          {
LABEL_44:
            _CUILog(4, "CUIEffectBlendMode can't be converted to CGBlendMode", *&mode, v3, v4, v5, v6, v7, v8);
            return 0;
          }
        }

        else
        {
          if (mode != 1935897198)
          {
            if (mode == 1936553316)
            {
              return 11;
            }

            goto LABEL_44;
          }

          return 2;
        }
      }

      else if (mode > 1934387571)
      {
        if (mode != 1934387572)
        {
          if (mode == 1935766560)
          {
            return 13;
          }

          goto LABEL_44;
        }

        return 8;
      }

      else if (mode != 1852797549)
      {
        if (mode == 1870030194)
        {
          return 3;
        }

        goto LABEL_44;
      }
    }

    else if (mode > 1818518630)
    {
      if (mode > 1819634975)
      {
        if (mode != 1819634976)
        {
          if (mode == 1836411936)
          {
            return 1;
          }

          goto LABEL_44;
        }

        return 15;
      }

      else
      {
        if (mode != 1818518631)
        {
          if (mode == 1818850405)
          {
            return 5;
          }

          goto LABEL_44;
        }

        return 27;
      }
    }

    else if (mode > 1768188277)
    {
      if (mode != 1768188278)
      {
        if (mode == 1818391150)
        {
          return 26;
        }

        goto LABEL_44;
      }

      return 7;
    }

    else
    {
      if (mode != 1749838196)
      {
        if (mode == 1752524064)
        {
          return 12;
        }

        goto LABEL_44;
      }

      return 9;
    }
  }

  else if (mode > 1668246641)
  {
    if (mode > 1684629093)
    {
      if (mode != 1684629094)
      {
        if (mode == 1684633120)
        {
          return 6;
        }

        goto LABEL_44;
      }

      return 10;
    }

    else
    {
      if (mode != 1668246642)
      {
        if (mode == 1684107883)
        {
          return 4;
        }

        goto LABEL_44;
      }

      return 14;
    }
  }

  else
  {
    if (mode - 16 < 0xC)
    {
      return mode;
    }

    if (mode)
    {
      goto LABEL_44;
    }
  }

  return result;
}

+ (id)caFilterFromCUIEffectBlendMode:(unsigned int)mode
{
  v3 = &kCAFilterNormalBlendMode;
  if (mode <= 1718842721)
  {
    if (mode <= 1668246641)
    {
      switch(mode)
      {
        case 0u:
          v3 = &kCAFilterSourceOver;
          break;
        case 0x10u:
          v3 = &kCAFilterClear;
          break;
        case 0x11u:
          v3 = &kCAFilterCopy;
          break;
        case 0x12u:
          v3 = &kCAFilterSourceIn;
          break;
        case 0x13u:
          v3 = &kCAFilterSourceOut;
          break;
        case 0x14u:
          v3 = &kCAFilterSourceAtop;
          break;
        case 0x15u:
          v3 = &kCAFilterDestOver;
          break;
        case 0x16u:
          v3 = &kCAFilterDestIn;
          break;
        case 0x17u:
          v3 = &kCAFilterDestOut;
          break;
        case 0x18u:
          v3 = &kCAFilterDestAtop;
          break;
        case 0x19u:
          v3 = &kCAFilterXor;
          break;
        case 0x1Au:
          v3 = &kCAFilterPlusD;
          break;
        case 0x1Bu:
          v3 = &kCAFilterPlusL;
          break;
        default:
          goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (mode > 1684629093)
    {
      v7 = 1684629094;
      v8 = &kCAFilterDifferenceBlendMode;
      if (mode == 1717856630)
      {
        v3 = &kCAFilterDivideBlendMode;
      }

      if (mode == 1684633120)
      {
        v3 = &kCAFilterColorDodgeBlendMode;
      }

      goto LABEL_38;
    }

    if (mode == 1668246642)
    {
      v6 = @"colorBlendMode";
      return [CAFilter filterWithType:v6];
    }

    v4 = mode == 1684107883;
    v5 = &kCAFilterDarkenBlendMode;
LABEL_43:
    if (v4)
    {
      v3 = v5;
    }

    goto LABEL_45;
  }

  if (mode <= 1836411935)
  {
    if (mode <= 1816947059)
    {
      if (mode > 1752524063)
      {
        if (mode == 1752524064)
        {
          v6 = @"hueBlendMode";
          return [CAFilter filterWithType:v6];
        }

        v4 = mode == 1768188278;
        v5 = &kCAFilterColorBurnBlendMode;
        goto LABEL_43;
      }

      v7 = 1718842722;
      v8 = &kCAFilterSubtractBlendMode;
      v9 = mode == 1749838196;
      v10 = &kCAFilterHardLightBlendMode;
    }

    else
    {
      if (mode > 1818518630)
      {
        if (mode == 1818518631)
        {
          v3 = &kCAFilterLinearDodgeBlendMode;
          goto LABEL_45;
        }

        if (mode == 1818850405)
        {
          v3 = &kCAFilterLightenBlendMode;
          goto LABEL_45;
        }

        if (mode != 1819634976)
        {
          goto LABEL_45;
        }

        v6 = @"luminosityBlendMode";
        return [CAFilter filterWithType:v6];
      }

      v7 = 1816947060;
      v8 = &kCAFilterLinearLightBlendMode;
      v9 = mode == 1818391150;
      v10 = &kCAFilterLinearBurnBlendMode;
    }

LABEL_36:
    if (v9)
    {
      v3 = v10;
    }

LABEL_38:
    if (mode == v7)
    {
      v3 = v8;
    }

    goto LABEL_45;
  }

  if (mode <= 1935766559)
  {
    if (mode > 1884055923)
    {
      if (mode == 1884055924)
      {
        v3 = &kCAFilterPinLightBlendMode;
        goto LABEL_45;
      }

      if (mode == 1885434739)
      {
        return 0;
      }

      v4 = mode == 1934387572;
      v5 = &kCAFilterSoftLightBlendMode;
      goto LABEL_43;
    }

    v7 = 1836411936;
    v8 = &kCAFilterMultiply;
    v9 = mode == 1870030194;
    v10 = &kCAFilterOverlayBlendMode;
    goto LABEL_36;
  }

  if (mode <= 1936553315)
  {
    if (mode == 1935766560)
    {
      v6 = @"saturationBlendMode";
      return [CAFilter filterWithType:v6];
    }

    v4 = mode == 1935897198;
    v5 = &kCAFilterScreenBlendMode;
    goto LABEL_43;
  }

  switch(mode)
  {
    case 0x736D7564u:
      v3 = &kCAFilterExclusionBlendMode;
      break;
    case 0x76636D75u:
      v6 = @"vibrantColorMatrixMultiply";
      return [CAFilter filterWithType:v6];
    case 0x7663736Fu:
      v6 = @"vibrantColorMatrixSourceOver";
      return [CAFilter filterWithType:v6];
  }

LABEL_45:
  v6 = *v3;
  if (*v3)
  {
    return [CAFilter filterWithType:v6];
  }

  return 0;
}

+ (_CUIVibrantColorMatrixOptions)monochromeVibrantColorMatrixOptions
{
  retstr->var0[0] = 0.0;
  retstr->var0[1] = 0.0;
  retstr->var0[2] = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  *&retstr->var0[3] = _Q0;
  *&retstr->var2 = _Q0;
  retstr->var4 = 1.0;
  *&retstr->var5 = 0u;
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  return result;
}

+ (_CUIVibrantColorMatrixOptions)standardVibrantColorMatrixOptionsForColor:(SEL)color
{
  SRGB = _CUIColorSpaceGetSRGB();
  DisplayP3 = _CUIColorSpaceGetDisplayP3();
  ColorSpace = CGColorGetColorSpace(a4);
  if (ColorSpace == SRGB || ColorSpace == DisplayP3)
  {
    CopyByMatchingToColorSpace = CGColorRetain(a4);
  }

  else
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(SRGB, kCGRenderingIntentDefault, a4, 0);
  }

  v10 = CopyByMatchingToColorSpace;
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  *retstr->var0 = *Components;
  retstr->var0[2] = Components[2];
  __asm { FMOV            V0.2D, #1.0 }

  *&retstr->var0[3] = _Q0;
  *&retstr->var2 = _Q0;
  retstr->var5 = 0.0;
  retstr->var6 = 0.0;
  retstr->var4 = 1.0;
  *&retstr->var7 = xmmword_18E022190;
  *&retstr->var9 = xmmword_18E0221A0;

  CGColorRelease(v10);
  return result;
}

+ (_CUIVibrantColorMatrixOptions)vibrantColorMatrixOptionsWithColor:(SEL)color saturation:(CGColor *)saturation brightness:(double)brightness
{
  if (CGColorGetAlpha(saturation) >= 1.0)
  {
    if (a2)
    {
      result = [a2 standardVibrantColorMatrixOptionsForColor:saturation];
      goto LABEL_7;
    }

LABEL_6:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    goto LABEL_7;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  result = [a2 monochromeVibrantColorMatrixOptions];
LABEL_7:
  *&retstr->var5 = v16;
  *&retstr->var7 = v17;
  *&retstr->var9 = v18;
  *retstr->var0 = v12;
  *&retstr->var0[2] = v13;
  *&retstr->var1 = v14;
  *&retstr->var3 = v15;
  retstr->var3 = a6;
  retstr->var4 = brightness;
  return result;
}

+ (void)configureVibrantColorMatrixFilter:(id)filter withOptions:(_CUIVibrantColorMatrixOptions *)options
{
  if (filter)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v5 = CAColorMatrixIdentity[3];
    v10 = CAColorMatrixIdentity[2];
    v11 = v5;
    v12 = CAColorMatrixIdentity[4];
    v6 = CAColorMatrixIdentity[1];
    v8 = CAColorMatrixIdentity[0];
    v9 = v6;
    CAColorMatrixConcat();
    CAColorMatrixConcat();
    CAColorMatrixConcat();
    CAColorMatrixConcat();
    v16 = v11;
    v17 = v12;
    v14 = v9;
    v15 = v10;
    v13 = v8;
    v7 = [NSValue valueWithCAColorMatrix:&v8];
    [filter setValue:v7 forKey:kCAFilterInputColorMatrix];
    [filter setEnabled:1];
  }
}

- (unint64_t)_parameterCount
{
  result = [(CUIShapeEffectPreset *)self effectCount];
  if (result)
  {
    return *(&self->_parameterList[124].effectValue.angleValue + result + 1);
  }

  return result;
}

- (id)CUIEffectDataRepresentation
{
  v27 = xmmword_18E0222D0;
  effectCount = [(CUIShapeEffectPreset *)self effectCount];
  v28 = effectCount;
  v4 = malloc_type_calloc(effectCount + 1, 4uLL, 0x100004052888210uLL);
  v5 = [[NSMutableData alloc] initWithCapacity:{(8 * -[CUIShapeEffectPreset _parameterCount](self, "_parameterCount") + 8) * effectCount}];
  if (effectCount)
  {
    v6 = 0;
    v7 = 0;
    effectIndex = self->_effectIndex;
    do
    {
      if (v7)
      {
        v9 = effectIndex[v7 - 1];
      }

      else
      {
        v9 = 0;
      }

      v10 = effectIndex[v6];
      v26[0] = self->_parameterList[v9].effectType;
      v26[1] = v10 - v9;
      v11 = v4[v6];
      v6 = (v7 + 1);
      v4[v6] = v11;
      [v5 appendBytes:v26 length:8];
      v4[v6] += 8;
      if (v10 > v9)
      {
        v18 = v9;
        p_effectValue = &self->_parameterList[v9].effectValue;
        v20 = v10 - v18;
        do
        {
          v25 = 0;
          v21 = *(&p_effectValue[-1].angleValue + 1);
          LODWORD(v25) = v21;
          if (v21 < 0xC)
          {
            if (((1 << v21) & 0xFB0) != 0)
            {
              HIDWORD(v25) = p_effectValue->intValue;
            }

            else if (((1 << v21) & 0xC) != 0)
            {
              floatValue = p_effectValue->floatValue;
              *(&v25 + 1) = floatValue;
            }

            else
            {
              WORD2(v25) = p_effectValue->angleValue;
              if (v21 != 6)
              {
                BYTE6(v25) = p_effectValue->colorValue.b;
              }
            }

            [v5 appendBytes:&v25 length:8];
            v4[v6] += 8;
          }

          else
          {
            _CUILog(4, "distill: Unrecognized effect parameter type %d for effect component %u", v12, v13, v14, v15, v16, v17, v21);
          }

          p_effectValue += 2;
          --v20;
        }

        while (v20);
      }

      v7 = v6;
    }

    while (effectCount > v6);
  }

  v23 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v5 length] + 4 * effectCount + 20);
  [(NSMutableData *)v23 appendBytes:&v27 length:20];
  [(NSMutableData *)v23 appendBytes:v4 length:4 * (effectCount + 1)];
  [(NSMutableData *)v23 appendData:v5];
  free(v4);

  return v23;
}

- (CUIShapeEffectPreset)initWithConstantPreset:(id *)preset
{
  v15.receiver = self;
  v15.super_class = CUIShapeEffectPreset;
  result = [(CUIShapeEffectPreset *)&v15 init];
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1.0;
    if (preset->var3 == 144)
    {
      v7 = 2.0;
    }

    result->_scaleFactor = v7;
    p_var2 = &preset->var5[0].var2;
    v9 = 125;
    do
    {
      var4 = p_var2[-1].var4;
      v11 = *(&p_var2[-1].var3 + 1);
      if (!p_var2[-1].var1)
      {
        break;
      }

      if (var4 == -1 && v11 == 0)
      {
        result->_effectIndex[v6 + 1] = result->_effectIndex[v6];
        ++v6;
      }

      else
      {
        var1 = p_var2->var1;
        v14 = &result->_parameterList[v5++];
        v14->effectType = var4;
        v14->effectParameter = v11;
        v14->effectValue.intValue = var1;
        ++result->_effectIndex[v6];
      }

      p_var2 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

- (uint64_t)setScaleFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 2112) = a2;
  }

  return result;
}

@end