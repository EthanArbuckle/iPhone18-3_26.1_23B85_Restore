@interface MTMaterialSettingsInterpolator
+ (id)_filteringProtocolGetterNames;
- (BOOL)_isBackdropRequiredWithSettings:(id)settings;
- (BOOL)_isBackdropRequiredWithSubSettings:(id)settings;
- (BOOL)_isPropertyEnabled:(id)enabled consideringWeighting:(BOOL)weighting;
- (BOOL)_isTintEnabledWithSettings:(id)settings;
- (BOOL)isBackdropRequiredEver;
- (BOOL)isBlurAtEnd;
- (BOOL)isCurvesEnabled;
- (BOOL)isTintEnabled;
- (CAColorMatrix)colorMatrix;
- (CGImage)variableBlurInputMask;
- (MTColor)tintColor;
- (MTMaterialSettingsInterpolator)initWithSettings:(id)settings;
- (NSDictionary)curvesValues;
- (NSString)blurInputQuality;
- (double)_floatPropertyValueForProperty:(id)property withTransformer:(id)transformer;
- (id)_averageColorEnabledWithSettings:(id)settings;
- (id)_backdropScaleWithSettings:(id)settings;
- (id)_colorMatrixColorWithSettings:(id)settings alpha:(double)alpha;
- (id)_colorWithGetterBlock:(id)block;
- (id)_filteringProperty:(id)property withSettings:(id)settings;
- (id)_luminanceInputValues;
- (id)_propertyValueForProperty:(id)property withTransformer:(id)transformer;
- (id)_tintAlphaWithSettings:(id)settings;
- (id)_zoomWithSettings:(id)settings;
- (id)description;
- (id)initialSettingsInterpolator;
- (void)_luminanceInputValues;
- (void)curvesValues;
- (void)isCurvesEnabled;
- (void)setWeighting:(double)weighting;
@end

@implementation MTMaterialSettingsInterpolator

- (BOOL)isBackdropRequiredEver
{
  if ([(MTMaterialSettingsInterpolator *)self isBackdropRequiredFinally])
  {
    return 1;
  }

  return [(MTMaterialSettingsInterpolator *)self isBackdropRequiredInitially];
}

+ (id)_filteringProtocolGetterNames
{
  if (_filteringProtocolGetterNames_onceToken != -1)
  {
    +[MTMaterialSettingsInterpolator _filteringProtocolGetterNames];
  }

  v3 = _filteringProtocolGetterNames___filteringProtocolSelectorNames;

  return v3;
}

- (NSDictionary)curvesValues
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)self->_initialSettings baseMaterialSettings];
  curvesValues = [baseMaterialSettings curvesValues];

  baseMaterialSettings2 = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  curvesValues2 = [baseMaterialSettings2 curvesValues];

  v6 = v3;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = MTCAFilterCurvesInputValuesKeys();
  v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v39)
  {
    v37 = *v42;
    v34 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * v7);
        v9 = [curvesValues objectForKey:v8];
        v10 = [curvesValues2 objectForKey:v8];
        v11 = v10;
        if (!(v9 | v10))
        {
          v14 = 0;
          goto LABEL_38;
        }

        v36 = v8;
        if (v9)
        {
          v12 = [v9 count];
          if (v12 == 4 && v11 != 0)
          {
LABEL_15:
            v12 = [v11 count];
          }

          if (v12 != 4)
          {
            [MTMaterialSettingsInterpolator curvesValues];
          }

          if (v9)
          {
            v15 = v11 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v17 = 0;
            while (1)
            {
              if (MTFloatIsZero(self->_weighting))
              {
                v18 = v9;
              }

              else
              {
                if (!MTFloatIsOne(self->_weighting))
                {
                  v20 = MEMORY[0x1E696AD98];
                  v21 = [v9 objectAtIndexedSubscript:v17];
                  [v21 floatValue];
                  v23 = v22;
                  weighting = self->_weighting;
                  v25 = [v11 objectAtIndexedSubscript:v17];
                  [v25 floatValue];
                  v27 = v26;
                  v28 = [v9 objectAtIndexedSubscript:v17];
                  [v28 floatValue];
                  v30 = v23 + weighting * (v27 - v29);

                  v19 = [v20 numberWithDouble:v30];
                  goto LABEL_34;
                }

                v18 = v11;
              }

              v19 = [v18 objectAtIndexedSubscript:v17];
LABEL_34:
              v31 = v19;
              [v14 addObject:v19];

              if (++v17 == 4)
              {
                v6 = v34;
                goto LABEL_37;
              }
            }
          }

          goto LABEL_23;
        }

        if (v10)
        {
          goto LABEL_15;
        }

LABEL_23:
        if (curvesValues | curvesValues2)
        {
          if (curvesValues)
          {
            v16 = v9;
          }

          else
          {
            v16 = v11;
          }

          v14 = v16;
        }

        else
        {
          v14 = 0;
        }

LABEL_37:
        [v6 setObject:v14 forKey:v36];
LABEL_38:

        ++v7;
      }

      while (v7 != v39);
      v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v39);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v6;
}

double __47__MTMaterialSettingsInterpolator_backdropScale__block_invoke(double a1, double a2, double a3)
{
  v3 = a2 == 0.0;
  if (a3 == 0.0)
  {
    v3 = 1;
  }

  if (a2 < a3 != v3)
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

- (CGImage)variableBlurInputMask
{
  if (self->_initialSettings)
  {
    return 0;
  }

  baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  variableBlurInputMask = [baseMaterialSettings variableBlurInputMask];

  return variableBlurInputMask;
}

- (NSString)blurInputQuality
{
  initialSettings = self->_initialSettings;
  v4 = @"default";
  if (initialSettings)
  {
    baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)initialSettings baseMaterialSettings];
    blurInputQuality = [baseMaterialSettings blurInputQuality];
    v7 = blurInputQuality;
    if (blurInputQuality)
    {
      v8 = blurInputQuality;
    }

    else
    {
      v8 = @"default";
    }

    v4 = v8;
  }

  baseMaterialSettings2 = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  blurInputQuality2 = [baseMaterialSettings2 blurInputQuality];

  if (MTCompareBlurInputQualities(v4, blurInputQuality2) == -1)
  {
    v11 = v4;
  }

  else
  {
    v11 = blurInputQuality2;
  }

  v12 = v11;

  return &v11->isa;
}

- (BOOL)isCurvesEnabled
{
  v3 = NSSelectorFromString(&cfstr_Curvesvalues.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MTMaterialSettingsInterpolator isCurvesEnabled];
  }

  if (self->_initialSettings)
  {
    v4 = [(MTMaterialSettingsInterpolator *)self performSelector:v3 withObject:?]!= 0;
  }

  else
  {
    v4 = 0;
  }

  return [(MTMaterialSettingsInterpolator *)self performSelector:v3 withObject:self->_finalSettings]|| v4;
}

- (BOOL)isTintEnabled
{
  if ([(MTMaterialSettingsInterpolator *)self _isTintEnabledWithSettings:self->_initialSettings])
  {
    return 1;
  }

  finalSettings = self->_finalSettings;

  return [(MTMaterialSettingsInterpolator *)self _isTintEnabledWithSettings:finalSettings];
}

- (BOOL)isBlurAtEnd
{
  baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  isBlurAtEnd = [baseMaterialSettings isBlurAtEnd];

  return isBlurAtEnd;
}

- (MTColor)tintColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__MTMaterialSettingsInterpolator_tintColor__block_invoke;
  v4[3] = &unk_1E80BDD58;
  v4[4] = self;
  v2 = [(MTMaterialSettingsInterpolator *)self _colorWithGetterBlock:v4];

  return v2;
}

- (id)_luminanceInputValues
{
  initialSettings = self->_initialSettings;
  if (initialSettings)
  {
    baseMaterialSettings = [(MTRecipeMaterialSettingsProviding *)initialSettings baseMaterialSettings];
    luminanceValues = [baseMaterialSettings luminanceValues];
  }

  else
  {
    luminanceValues = 0;
  }

  baseMaterialSettings2 = [(MTRecipeMaterialSettingsProviding *)self->_finalSettings baseMaterialSettings];
  luminanceValues2 = [baseMaterialSettings2 luminanceValues];

  if (luminanceValues | luminanceValues2)
  {
    if (luminanceValues && luminanceValues2)
    {
      if ([luminanceValues count] != 4 || objc_msgSend(luminanceValues2, "count") != 4)
      {
        [MTMaterialSettingsInterpolator _luminanceInputValues];
      }

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = 0;
      while (1)
      {
        if (MTFloatIsZero(self->_weighting))
        {
          v10 = luminanceValues;
        }

        else
        {
          if (!MTFloatIsOne(self->_weighting))
          {
            v12 = MEMORY[0x1E696AD98];
            v13 = [luminanceValues objectAtIndexedSubscript:v9];
            [v13 floatValue];
            v15 = v14;
            weighting = self->_weighting;
            v17 = [luminanceValues2 objectAtIndexedSubscript:v9];
            [v17 floatValue];
            v19 = v18;
            v20 = [luminanceValues objectAtIndexedSubscript:v9];
            [v20 floatValue];
            v22 = v15 + weighting * (v19 - v21);

            v11 = [v12 numberWithDouble:v22];
            goto LABEL_16;
          }

          v10 = luminanceValues2;
        }

        v11 = [v10 objectAtIndexedSubscript:v9];
LABEL_16:
        v23 = v11;
        [v8 addObject:v11];

        if (++v9 == 4)
        {
          goto LABEL_23;
        }
      }
    }

    if (luminanceValues)
    {
      v24 = luminanceValues;
    }

    else
    {
      v24 = luminanceValues2;
    }

    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

LABEL_23:
  v25 = v8;

  return v8;
}

uint64_t __63__MTMaterialSettingsInterpolator__filteringProtocolGetterNames__block_invoke()
{
  _filteringProtocolGetterNames___filteringProtocolSelectorNames = MTProtocolGetProperties(&unk_1F3E04410, 3);

  return MEMORY[0x1EEE66BB8]();
}

- (MTMaterialSettingsInterpolator)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v8.receiver = self;
  v8.super_class = MTMaterialSettingsInterpolator;
  v5 = [(MTMaterialSettingsInterpolator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTMaterialSettingsInterpolator *)v5 setFinalSettings:settingsCopy];
  }

  return v6;
}

- (id)initialSettingsInterpolator
{
  finalSettings = self->_finalSettings;
  if (finalSettings)
  {
    if (self->_initialSettings)
    {
      finalSettings = self->_initialSettings;
    }

    v4 = finalSettings;
    v5 = [[MTMaterialSettingsInterpolator alloc] initWithSettings:v4];

    [(MTMaterialSettingsInterpolator *)v5 setWeighting:self->_previousWeighting];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setWeighting:(double)weighting
{
  weighting = self->_weighting;
  if (weighting != weighting)
  {
    self->_previousWeighting = weighting;
    self->_weighting = weighting;
  }
}

- (CAColorMatrix)colorMatrix
{
  v4 = [(MTMaterialSettingsInterpolator *)self _propertyValueForProperty:@"colorMatrix" withTransformer:&__block_literal_global_3];
  if (v4)
  {
    v6 = v4;
    [v4 CAColorMatrixValue];
    v4 = v6;
  }

  else
  {
    *&retstr->m33 = 0u;
    *&retstr->m42 = 0u;
    *&retstr->m15 = 0u;
    *&retstr->m24 = 0u;
    *&retstr->m11 = 0u;
  }

  return result;
}

id __45__MTMaterialSettingsInterpolator_colorMatrix__block_invoke(double a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x1E696B098];
  if (v6)
  {
    [v6 CAColorMatrixValue];
    if (v8)
    {
LABEL_3:
      [v8 CAColorMatrixValue];
      goto LABEL_6;
    }
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    if (v7)
    {
      goto LABEL_3;
    }
  }

  memset(v12, 0, sizeof(v12));
LABEL_6:
  v10 = [v9 valueWithBytes:v14 objCType:{"{CAColorMatrix=ffffffffffffffffffff}", *MTCAColorMatrixInterpolate(v13, v12, v14, a1).i64}];

  return v10;
}

- (BOOL)_isPropertyEnabled:(id)enabled consideringWeighting:(BOOL)weighting
{
  enabledCopy = enabled;
  enabledCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@WithSettings:", enabledCopy];
  v9 = NSSelectorFromString(enabledCopy);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(MTMaterialSettingsInterpolator *)a2 _isPropertyEnabled:enabledCopy consideringWeighting:?];
  }

  if (self->_initialSettings)
  {
    v10 = [-[MTMaterialSettingsInterpolator performSelector:withObject:](self performSelector:v9) withObject:{"mt_isIdentityValueForMaterialSettingsProperty:", enabledCopy}] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = [-[MTMaterialSettingsInterpolator performSelector:withObject:](self performSelector:v9 withObject:{self->_finalSettings), "mt_isIdentityValueForMaterialSettingsProperty:", enabledCopy}];
  weighting = self->_weighting;
  v13 = !weighting;
  v14 = weighting < 1.0 || !weighting;
  v15 = v10 & v14;
  if (weighting > 0.0)
  {
    v13 = 1;
  }

  if (v15)
  {
    v13 = v15;
  }

  if (v11)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (id)_propertyValueForProperty:(id)property withTransformer:(id)transformer
{
  propertyCopy = property;
  transformerCopy = transformer;
  propertyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@WithSettings:", propertyCopy];
  v10 = NSSelectorFromString(propertyCopy);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(MTMaterialSettingsInterpolator *)a2 _propertyValueForProperty:propertyCopy withTransformer:?];
  }

  if (self->_initialSettings)
  {
    v11 = [(MTMaterialSettingsInterpolator *)self performSelector:v10 withObject:?];
  }

  else
  {
    v11 = [MEMORY[0x1E696B098] mt_identityValueForMaterialSettingsProperty:propertyCopy];
  }

  v12 = v11;
  v13 = [(MTMaterialSettingsInterpolator *)self performSelector:v10 withObject:self->_finalSettings];
  v14 = v13;
  if (transformerCopy)
  {
    v15 = transformerCopy[2](transformerCopy, v12, v13, self->_weighting);
  }

  else
  {
    v15 = v13;
  }

  v16 = v15;

  return v16;
}

- (double)_floatPropertyValueForProperty:(id)property withTransformer:(id)transformer
{
  transformerCopy = transformer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__MTMaterialSettingsInterpolator__floatPropertyValueForProperty_withTransformer___block_invoke;
  v13[3] = &unk_1E80BDD80;
  v15 = a2;
  v13[4] = self;
  v8 = transformerCopy;
  v14 = v8;
  v9 = [(MTMaterialSettingsInterpolator *)self _propertyValueForProperty:property withTransformer:v13];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [MTMaterialSettingsInterpolator _floatPropertyValueForProperty:withTransformer:];
  }

  [v9 floatValue];
  v11 = v10;

  return v11;
}

id __81__MTMaterialSettingsInterpolator__floatPropertyValueForProperty_withTransformer___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (v7 && (objc_opt_respondsToSelector() & 1) == 0 || v8 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    __81__MTMaterialSettingsInterpolator__floatPropertyValueForProperty_withTransformer___block_invoke_cold_1(a1);
  }

  v9 = *(a1 + 40);
  v10 = MEMORY[0x1E696AD98];
  [v7 floatValue];
  if (v9)
  {
    v12 = v11;
    [v8 floatValue];
    (*(v9 + 16))(v9, a4, v12, v13);
  }

  else
  {
    v15 = v11;
    [v8 floatValue];
    v17 = v16;
    [v7 floatValue];
    v14 = v15 + a4 * (v17 - v18);
  }

  v19 = [v10 numberWithDouble:v14];

  return v19;
}

- (id)_colorWithGetterBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [MTMaterialSettingsInterpolator _colorWithGetterBlock:];
  }

  if (self->_initialSettings)
  {
    v5 = [(MTMaterialSettingsInterpolator *)self _tintAlphaWithSettings:?];
  }

  else
  {
    v5 = 0;
  }

  if (self->_initialSettings)
  {
    [v5 doubleValue];
    v7 = v6 * (1.0 - self->_weighting);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(MTMaterialSettingsInterpolator *)self _tintAlphaWithSettings:self->_finalSettings];
  [v8 doubleValue];
  v10 = v9 * self->_weighting;
  if (self->_initialSettings)
  {
    v11 = blockCopy[2](blockCopy, v7);
  }

  else
  {
    v11 = 0;
  }

  v12 = (blockCopy[2])(blockCopy, self->_finalSettings, v10);
  v13 = v12;
  if (!(v11 | v12))
  {
    goto LABEL_21;
  }

  if (!v11 || !v12)
  {
    if (v11)
    {
      v18 = v11;
LABEL_20:
      v17 = v18;
      goto LABEL_22;
    }

    if (v12)
    {
      v18 = v12;
      goto LABEL_20;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  v14 = [v11 colorWithAlphaComponent:v7];
  v15 = [v13 colorWithAlphaComponent:v10];
  v16 = [v14 colorBlendedWithColor:v15];
  v17 = [v16 colorWithAlphaComponent:v10];

LABEL_22:
  v19 = v17;

  return v17;
}

- (BOOL)_isBackdropRequiredWithSubSettings:(id)settings
{
  settingsCopy = settings;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (settingsCopy)
  {
    _filteringProtocolGetterNames = [objc_opt_class() _filteringProtocolGetterNames];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__MTMaterialSettingsInterpolator__isBackdropRequiredWithSubSettings___block_invoke;
    v7[3] = &unk_1E80BDDA8;
    v9 = &v10;
    v8 = settingsCopy;
    [_filteringProtocolGetterNames enumerateObjectsUsingBlock:v7];

    v5 = *(v11 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v5 & 1;
}

void __69__MTMaterialSettingsInterpolator__isBackdropRequiredWithSubSettings___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 isEqualToString:@"curvesValues"];
  v6 = [*(a1 + 32) valueForKey:v9];
  v7 = v6;
  if (v5)
  {
    v8 = v6 != 0;
  }

  else
  {
    v8 = [v6 mt_isIdentityValueForMaterialSettingsProperty:v9] ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;

  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (BOOL)_isBackdropRequiredWithSettings:(id)settings
{
  baseMaterialSettings = [settings baseMaterialSettings];
  LOBYTE(self) = [(MTMaterialSettingsInterpolator *)self _isBackdropRequiredWithSubSettings:baseMaterialSettings];

  return self;
}

- (BOOL)_isTintEnabledWithSettings:(id)settings
{
  if (settings)
  {
    v3 = [(MTMaterialSettingsInterpolator *)self _tintAlphaWithSettings:?];
    v4 = [v3 mt_isIdentityValueForMaterialSettingsProperty:@"tintAlpha"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_filteringProperty:(id)property withSettings:(id)settings
{
  propertyCopy = property;
  settingsCopy = settings;
  _filteringProtocolGetterNames = [objc_opt_class() _filteringProtocolGetterNames];
  v8 = [_filteringProtocolGetterNames containsObject:propertyCopy];

  if ((v8 & 1) == 0)
  {
    [MTMaterialSettingsInterpolator _filteringProperty:withSettings:];
  }

  baseMaterialSettings = [settingsCopy baseMaterialSettings];
  v10 = [baseMaterialSettings valueForKey:propertyCopy];

  return v10;
}

- (id)_tintAlphaWithSettings:(id)settings
{
  baseMaterialSettings = [settings baseMaterialSettings];
  v4 = MEMORY[0x1E696AD98];
  [baseMaterialSettings tintAlpha];
  v5 = [v4 numberWithDouble:?];

  return v5;
}

- (id)_zoomWithSettings:(id)settings
{
  v3 = MEMORY[0x1E696AD98];
  baseMaterialSettings = [settings baseMaterialSettings];
  [baseMaterialSettings zoom];
  v5 = [v3 numberWithDouble:?];

  return v5;
}

- (id)_colorMatrixColorWithSettings:(id)settings alpha:(double)alpha
{
  baseMaterialSettings = [settings baseMaterialSettings];
  if ([baseMaterialSettings tintColor])
  {
    v6 = +[MTColor colorWithCGColor:](MTColor, "colorWithCGColor:", [baseMaterialSettings tintColor]);
    v7 = [v6 colorWithAlphaComponent:alpha];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_backdropScaleWithSettings:(id)settings
{
  v3 = MEMORY[0x1E696AD98];
  baseMaterialSettings = [settings baseMaterialSettings];
  [baseMaterialSettings backdropScale];
  v5 = [v3 numberWithDouble:?];

  return v5;
}

- (id)_averageColorEnabledWithSettings:(id)settings
{
  v3 = MEMORY[0x1E696AD98];
  baseMaterialSettings = [settings baseMaterialSettings];
  v5 = [v3 numberWithBool:{objc_msgSend(baseMaterialSettings, "isAverageColorEnabled")}];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p final settings: %@", objc_opt_class(), self, self->_finalSettings];;
  v4 = v3;
  if (self->_initialSettings)
  {
    [v3 appendFormat:@"; initial settings: %@", self->_initialSettings];
  }

  [v4 appendFormat:@"; weighting: %f>", *&self->_weighting];

  return v4;
}

- (void)isCurvesEnabled
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"curvesValues" object:? file:? lineNumber:? description:?];
}

- (void)curvesValues
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v3 object:v2 file:@"MTMaterialSettingsInterpolator.m" lineNumber:179 description:{@"Either 'initialValues' (%@) or 'finalValues' (%@) doesn't have the required number of objects (4)", v1, v0}];
}

- (void)_isPropertyEnabled:(uint64_t)a3 consideringWeighting:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MTMaterialSettingsInterpolator.m" lineNumber:224 description:{@"This class doesn't respond to constructed selector '%@'", a3}];
}

- (void)_propertyValueForProperty:(uint64_t)a3 withTransformer:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MTMaterialSettingsInterpolator.m" lineNumber:236 description:{@"This class doesn't respond to constructed selector '%@'", a3}];
}

- (void)_floatPropertyValueForProperty:withTransformer:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __81__MTMaterialSettingsInterpolator__floatPropertyValueForProperty_withTransformer___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MTMaterialSettingsInterpolator.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"(!initialValue || [initialValue respondsToSelector:@selector(floatValue)]) && (!finalValue || [finalValue respondsToSelector:@selector(floatValue)])"}];
}

- (void)_colorWithGetterBlock:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"getter" object:? file:? lineNumber:? description:?];
}

- (void)_luminanceInputValues
{
  OUTLINED_FUNCTION_2_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v3 object:v2 file:@"MTMaterialSettingsInterpolator.m" lineNumber:285 description:{@"Either 'initialValues' (%@) or 'finalValues' (%@) doesn't have the required number of objects (4)", v1, v0}];
}

- (void)_filteringProperty:withSettings:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[[[self class] _filteringProtocolGetterNames] containsObject:filteringProperty]" object:? file:? lineNumber:? description:?];
}

@end