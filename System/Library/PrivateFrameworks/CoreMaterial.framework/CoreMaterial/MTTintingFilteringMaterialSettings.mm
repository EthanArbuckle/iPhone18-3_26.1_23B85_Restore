@interface MTTintingFilteringMaterialSettings
- (CAColorMatrix)colorMatrix;
- (MTTintingFilteringMaterialSettings)initWithMaterialDescription:(id)description andDescendantDescriptions:(id)descriptions bundle:(id)bundle;
- (void)_processMaterialFilteringDescription:(id)description defaultingToIdentity:(BOOL)identity bundle:(id)bundle;
- (void)_processUserInfoDescription:(id)description;
- (void)dealloc;
@end

@implementation MTTintingFilteringMaterialSettings

- (CAColorMatrix)colorMatrix
{
  v3 = *&self[2].m31;
  *&retstr->m24 = *&self[2].m22;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[2].m35;
  v4 = *&self[2].m13;
  *&retstr->m11 = *&self[1].m44;
  *&retstr->m15 = v4;
  return self;
}

- (MTTintingFilteringMaterialSettings)initWithMaterialDescription:(id)description andDescendantDescriptions:(id)descriptions bundle:(id)bundle
{
  v44 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  bundleCopy = bundle;
  v11 = [descriptionCopy objectForKey:@"tinting"];
  v12 = [descriptionsCopy valueForKey:@"tinting"];
  v41.receiver = self;
  v41.super_class = MTTintingFilteringMaterialSettings;
  v13 = [(MTTintingMaterialSettings *)&v41 initWithTintingDescription:v11 andDescendantDescriptions:v12];

  if (v13)
  {
    v32 = descriptionCopy;
    v14 = [descriptionCopy objectForKey:@"materialFiltering"];
    [(MTTintingFilteringMaterialSettings *)v13 _processMaterialFilteringDescription:v14 defaultingToIdentity:1 bundle:bundleCopy];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [descriptionsCopy valueForKey:@"materialFiltering"];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        v19 = 0;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v37 + 1) + 8 * v19);
          null = [MEMORY[0x1E695DFB0] null];

          if (v20 != null)
          {
            [(MTTintingFilteringMaterialSettings *)v13 _processMaterialFilteringDescription:v20 defaultingToIdentity:0 bundle:bundleCopy];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v17);
    }

    v22 = [v32 objectForKey:@"userInfo"];
    [(MTTintingFilteringMaterialSettings *)v13 _processUserInfoDescription:v22];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = [descriptionsCopy valueForKey:@"userInfo"];
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        v27 = 0;
        do
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v33 + 1) + 8 * v27);
          null2 = [MEMORY[0x1E695DFB0] null];

          if (v28 != null2)
          {
            [(MTTintingFilteringMaterialSettings *)v13 _processUserInfoDescription:v28];
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v25);
    }

    descriptionCopy = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  variableBlurInputMask = self->_variableBlurInputMask;
  if (variableBlurInputMask)
  {
    CGImageRelease(variableBlurInputMask);
  }

  v4.receiver = self;
  v4.super_class = MTTintingFilteringMaterialSettings;
  [(MTTintingMaterialSettings *)&v4 dealloc];
}

- (void)_processMaterialFilteringDescription:(id)description defaultingToIdentity:(BOOL)identity bundle:(id)bundle
{
  identityCopy = identity;
  descriptionCopy = description;
  bundleCopy = bundle;
  v10 = [descriptionCopy objectForKey:@"luminanceAmount"];
  if (v10)
  {
    v11 = [descriptionCopy objectForKey:@"luminanceAmount"];
LABEL_5:
    v12 = v11;
    [v11 floatValue];
    self->_luminanceAmount = v13;

    goto LABEL_6;
  }

  if (identityCopy)
  {
    v11 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"luminanceAmount"];
    goto LABEL_5;
  }

LABEL_6:

  v14 = [descriptionCopy objectForKey:@"luminanceValues"];
  luminanceValues = v14;
  if (!v14)
  {
    luminanceValues = 0;
    if (!identityCopy)
    {
      luminanceValues = self->_luminanceValues;
    }
  }

  objc_storeStrong(&self->_luminanceValues, luminanceValues);

  v16 = [descriptionCopy objectForKey:@"blurRadius"];
  if (v16)
  {
    v17 = [descriptionCopy objectForKey:@"blurRadius"];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_14;
    }

    v17 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"blurRadius"];
  }

  v18 = v17;
  [v17 floatValue];
  self->_blurRadius = v19;

LABEL_14:
  v20 = [descriptionCopy objectForKey:@"averageColorEnabled"];
  if (v20)
  {
    v21 = [descriptionCopy objectForKey:@"averageColorEnabled"];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_19;
    }

    v21 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"averageColorEnabled"];
  }

  v22 = v21;
  self->_averageColorEnabled = [v21 BOOLValue];

LABEL_19:
  v23 = [descriptionCopy objectForKey:@"saturation"];
  if (v23)
  {
    v24 = [descriptionCopy objectForKey:@"saturation"];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_24;
    }

    v24 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"saturation"];
  }

  v25 = v24;
  [v24 floatValue];
  self->_saturation = v26;

LABEL_24:
  v27 = [descriptionCopy objectForKey:@"brightness"];
  if (v27)
  {
    v28 = [descriptionCopy objectForKey:@"brightness"];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_29;
    }

    v28 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"brightness"];
  }

  v29 = v28;
  [v28 floatValue];
  self->_brightness = v30;

LABEL_29:
  v31 = [descriptionCopy objectForKey:@"colorMatrix"];
  if (v31)
  {
    v32 = [descriptionCopy objectForKey:@"colorMatrix"];
    MTCAColorMatrixMakeWithDictionaryRepresentation(v32, &v55);
LABEL_31:
    v33 = v58;
    *&self->_colorMatrix.m24 = v57;
    *&self->_colorMatrix.m33 = v33;
    *&self->_colorMatrix.m42 = v59;
    v34 = v56;
    *&self->_colorMatrix.m11 = v55;
    *&self->_colorMatrix.m15 = v34;

    goto LABEL_32;
  }

  if (identityCopy)
  {
    v37 = [MEMORY[0x1E696B098] mt_identityValueForFilter:*MEMORY[0x1E6979880]];
    v32 = v37;
    if (v37)
    {
      [v37 CAColorMatrixValue];
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
    }

    goto LABEL_31;
  }

LABEL_32:

  v35 = [descriptionCopy objectForKey:@"zoom"];
  if (v35)
  {
    v36 = [descriptionCopy objectForKey:@"zoom"];
  }

  else
  {
    if (!identityCopy)
    {
      goto LABEL_40;
    }

    v36 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"zoom"];
  }

  v38 = v36;
  [v36 floatValue];
  self->_zoom = v39;

LABEL_40:
  v40 = [descriptionCopy objectForKey:@"backdropScale"];
  if (v40)
  {
    v41 = [descriptionCopy objectForKey:@"backdropScale"];
LABEL_44:
    v42 = v41;
    [v41 floatValue];
    self->_backdropScale = v43;

    goto LABEL_45;
  }

  if (identityCopy)
  {
    v41 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"backdropScale"];
    goto LABEL_44;
  }

LABEL_45:

  v44 = [descriptionCopy objectForKey:@"blurInputQuality"];
  v45 = v44;
  if (v44 || identityCopy)
  {
    if (v44)
    {
      blurInputQuality = v44;
    }

    else
    {
      blurInputQuality = @"default";
    }
  }

  else
  {
    blurInputQuality = self->_blurInputQuality;
  }

  objc_storeStrong(&self->_blurInputQuality, blurInputQuality);

  v47 = [descriptionCopy objectForKey:@"blurAtEnd"];
  if (v47)
  {
    v48 = [descriptionCopy objectForKey:@"blurAtEnd"];
LABEL_55:
    v49 = v48;
    self->_blurAtEnd = [v48 BOOLValue];

    goto LABEL_56;
  }

  if (identityCopy)
  {
    v48 = [MEMORY[0x1E696AD98] mt_identityValueForMaterialSettingsProperty:@"blurAtEnd"];
    goto LABEL_55;
  }

LABEL_56:

  v50 = [descriptionCopy objectForKey:@"variableBlurInputMaskName"];
  variableBlurInputMaskName = v50;
  if (!v50)
  {
    variableBlurInputMaskName = 0;
    if (!identityCopy)
    {
      variableBlurInputMaskName = self->_variableBlurInputMaskName;
    }
  }

  objc_storeStrong(&self->_variableBlurInputMaskName, variableBlurInputMaskName);

  v52 = self->_variableBlurInputMaskName;
  if (v52)
  {
    if (self->_variableBlurInputMask)
    {
      CGImageRelease(self->_variableBlurInputMask);
      v52 = self->_variableBlurInputMaskName;
    }

    self->_variableBlurInputMask = MTCGImageCreateWithName(v52, bundleCopy, 0.0);
  }

  v53 = [descriptionCopy objectForKey:{@"curvesValues", v55, v56, v57, v58, v59}];
  curvesValues = v53;
  if (!v53)
  {
    curvesValues = 0;
    if (!identityCopy)
    {
      curvesValues = self->_curvesValues;
    }
  }

  objc_storeStrong(&self->_curvesValues, curvesValues);
}

- (void)_processUserInfoDescription:(id)description
{
  v22 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if ([descriptionCopy count])
  {
    userInfo = self->_userInfo;
    if (userInfo)
    {
      v6 = [(NSDictionary *)userInfo mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v6;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = descriptionCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v8 objectForKey:{v13, v17}];
          [(NSDictionary *)v7 setObject:v14 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v15 = self->_userInfo;
    self->_userInfo = v7;
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end