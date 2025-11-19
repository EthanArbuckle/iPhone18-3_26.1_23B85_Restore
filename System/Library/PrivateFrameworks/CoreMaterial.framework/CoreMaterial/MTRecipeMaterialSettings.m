@interface MTRecipeMaterialSettings
- (MTRecipeMaterialSettings)initWithRecipeName:(id)a3 andDescription:(id)a4 descendantDescriptions:(id)a5 bundle:(id)a6;
- (NSString)description;
- (id)_newVisualStyleSet;
- (id)_platformColorsStyleSetName;
- (id)_visualStyleSetDescription;
- (id)styleNameForCategory:(id)a3;
@end

@implementation MTRecipeMaterialSettings

- (MTRecipeMaterialSettings)initWithRecipeName:(id)a3 andDescription:(id)a4 descendantDescriptions:(id)a5 bundle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = MTRecipeMaterialSettings;
  v14 = [(MTRecipeMaterialSettings *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    recipeName = v14->_recipeName;
    v14->_recipeName = v15;

    v17 = [v11 objectForKey:@"materialSettingsVersion"];
    v14->_materialSettingsVersion = [v17 integerValue];

    v18 = [v11 objectForKey:@"styles"];
    styles = v14->_styles;
    v14->_styles = v18;

    v20 = [MTTintingFilteringMaterialSettings alloc];
    v21 = [v11 objectForKey:@"baseMaterial"];
    v22 = [v12 valueForKey:@"baseMaterial"];
    v23 = [(MTTintingFilteringMaterialSettings *)v20 initWithMaterialDescription:v21 andDescendantDescriptions:v22 bundle:v13];
    baseMaterialSettings = v14->_baseMaterialSettings;
    v14->_baseMaterialSettings = v23;
  }

  return v14;
}

- (id)styleNameForCategory:(id)a3
{
  if (@"platformColor" == a3)
  {
    [(MTRecipeMaterialSettings *)self _platformColorsStyleSetName];
  }

  else
  {
    [(NSDictionary *)self->_styles objectForKey:?];
  }
  v3 = ;

  return v3;
}

- (id)_visualStyleSetDescription
{
  v65[2] = *MEMORY[0x1E69E9840];
  v2 = [(MTRecipeMaterialSettings *)self baseMaterialSettings];
  if (!_CanGenerateVisualStylingDescriptionFromConfigurationSettings(v2))
  {
    v14 = 0;
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __54__MTRecipeMaterialSettings__visualStyleSetDescription__block_invoke;
  v55[3] = &unk_1E80BDBE0;
  v55[4] = &v56;
  v3 = MEMORY[0x1BFB5AC50](v55);
  v4 = [v2 tintColorDescription];

  if (v4)
  {
    v5 = v3[2](v3);
    v6 = [v2 tintColorDescription];
    [v5 setObject:v6 forKey:@"tinting"];
  }

  v30 = *(MEMORY[0x1E6979280] + 48);
  v52 = *(MEMORY[0x1E6979280] + 32);
  v53 = v30;
  v54 = *(MEMORY[0x1E6979280] + 64);
  v27 = *(MEMORY[0x1E6979280] + 16);
  v50 = *MEMORY[0x1E6979280];
  v51 = v27;
  v7 = MEMORY[0x1E696AD98];
  [v2 saturation];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 mt_isIdentityValueForMaterialSettingsProperty:@"saturation"];

  if ((v9 & 1) == 0)
  {
    [v2 saturation];
    CAColorMatrixMakeSaturation();
    v37 = v32;
    v38 = v31;
    v39 = v29;
    v35 = v26;
    v36 = v28;
    CAColorMatrixConcat();
    v52 = v47;
    v53 = v48;
    v54 = v49;
    v50 = v45;
    v51 = v46;
  }

  v10 = MEMORY[0x1E696AD98];
  [v2 brightness];
  v11 = [v10 numberWithDouble:?];
  v12 = [v11 mt_isIdentityValueForMaterialSettingsProperty:@"brightness"];

  if ((v12 & 1) == 0)
  {
    [v2 brightness];
    CAColorMatrixMakeBrightness();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    v35 = v50;
    v36 = v51;
    CAColorMatrixConcat();
    v52 = v47;
    v53 = v48;
    v54 = v49;
    v50 = v45;
    v51 = v46;
  }

  v13 = MEMORY[0x1E696B098];
  if (v2)
  {
    [v2 colorMatrix];
  }

  else
  {
    memset(v34, 0, sizeof(v34));
  }

  v15 = [v13 valueWithBytes:v34 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  v16 = [v15 mt_isIdentityValueForMaterialSettingsProperty:@"colorMatrix"];

  if ((v16 & 1) == 0)
  {
    if (v2)
    {
      [v2 colorMatrix];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
    }

    v37 = v52;
    v38 = v53;
    v39 = v54;
    v35 = v50;
    v36 = v51;
    CAColorMatrixConcat();
    v52 = v47;
    v53 = v48;
    v54 = v49;
    v50 = v45;
    v51 = v46;
  }

  v47 = v52;
  v48 = v53;
  v49 = v54;
  v45 = v50;
  v46 = v51;
  if (!MTCAColorMatrixIsIdentity(&v45))
  {
    v17 = v3[2](v3);
    v18 = *MEMORY[0x1E6979D78];
    v64[1] = @"filterProperties";
    v65[0] = v18;
    v64[0] = @"filterType";
    v62 = @"inputColorMatrix";
    v33[2] = v52;
    v33[3] = v53;
    v33[4] = v54;
    v33[0] = v50;
    v33[1] = v51;
    v19 = [MEMORY[0x1E696B098] valueWithBytes:v33 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    v63 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v65[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
    [v17 setObject:v21 forKey:@"filtering"];
  }

  if (v57[5])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:v57[5] forKey:@"secondary"];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v56, 8);
  if (!v14)
  {
    goto LABEL_24;
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v22 setObject:v14 forKey:@"styles"];
  [v22 setObject:&unk_1F3E01788 forKey:@"visualStyleSetVersion"];
LABEL_25:
  v23 = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

id __54__MTRecipeMaterialSettings__visualStyleSetDescription__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v2;
}

- (id)_newVisualStyleSet
{
  v3 = [(MTRecipeMaterialSettings *)self _visualStyleSetDescription];
  if (v3)
  {
    v4 = [MTVisualStyleSet alloc];
    v5 = objc_opt_class();
    v6 = [(MTRecipeMaterialSettings *)self recipeName];
    v7 = [v5 styleSetNameForStyleSetFromRecipeWithName:v6];
    v8 = [(MTVisualStyleSet *)v4 initWithName:v7 visualStyleSetDescription:v3 andDescendantDescriptions:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_platformColorsStyleSetName
{
  v2 = [(NSString *)self->_recipeName hasSuffix:@"Dark"];
  v3 = &kMTCoreMaterialStyleNamePlatformColorsDark;
  if (!v2)
  {
    v3 = &kMTCoreMaterialStyleNamePlatformColorsLight;
  }

  v4 = *v3;

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  materialSettingsVersion = self->_materialSettingsVersion;
  v6 = [v3 stringWithFormat:@"<%@: %p recipeName: %@; materialSettingsVersion: %ld; styles: %@", v4, self, self->_recipeName, materialSettingsVersion, self->_styles];;
  v7 = [(MTRecipeMaterialSettings *)self baseMaterialSettings];
  v8 = v7;
  if (v7)
  {
    [v6 appendFormat:@"; baseMaterialSettings: %@", v7];
  }

  [v6 appendString:@">"];

  return v6;
}

@end