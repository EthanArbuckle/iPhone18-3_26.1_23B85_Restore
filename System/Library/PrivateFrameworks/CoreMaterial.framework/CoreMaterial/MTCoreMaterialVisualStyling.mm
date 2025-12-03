@interface MTCoreMaterialVisualStyling
- (CAFilter)_composedFilter;
- (MTCoreMaterialVisualStyling)initWithVisualStyleSet:(id)set styleName:(id)name description:(id)description andDescendantDescriptions:(id)descriptions;
- (NSString)description;
- (NSString)visualStyleSetName;
- (id)_preProcessFilteringDescription:(id)description;
- (void)_applyToLayer:(id)layer withColorBlock:(id)block;
- (void)_getCompositingFilter:(id *)filter tintColor:(CGColor *)color;
- (void)_getFilterType:(id *)type vibrantColor:(CGColor *)color tintColor:(CGColor *)tintColor inputReversed:(BOOL *)reversed;
- (void)_processBlendingDescription:(id)description;
- (void)_processFilteringDescription:(id)description;
- (void)_processTintingDescription:(id)description;
- (void)_processUserInfoDescription:(id)description;
- (void)dealloc;
@end

@implementation MTCoreMaterialVisualStyling

- (CAFilter)_composedFilter
{
  v25 = *MEMORY[0x1E69E9840];
  composedFilter = self->_composedFilter;
  if (!composedFilter)
  {
    if (self->_filterType)
    {
      v4 = [MEMORY[0x1E6979378] filterWithType:?];
      v5 = self->_composedFilter;
      self->_composedFilter = v4;

      compositingFilter = self->_compositingFilter;
      v7 = MTComposedFilterCreateDictionaryRepresentation(self->_filterType, self->_filterProperties, compositingFilter != 0);
      v8 = v7;
      if (compositingFilter)
      {
        lastObject = [v7 objectForKey:@"compositingFilter"];
      }

      else
      {
        v10 = [v7 valueForKey:@"filters"];
        lastObject = [v10 lastObject];
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = lastObject;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if (([v16 isEqualToString:{@"type", v20}] & 1) == 0)
            {
              v17 = [v11 objectForKey:v16];
              [(CAFilter *)self->_composedFilter setValue:v17 forKey:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      composedFilter = self->_composedFilter;
    }

    else
    {
      composedFilter = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return composedFilter;
}

- (MTCoreMaterialVisualStyling)initWithVisualStyleSet:(id)set styleName:(id)name description:(id)description andDescendantDescriptions:(id)descriptions
{
  v77 = *MEMORY[0x1E69E9840];
  setCopy = set;
  nameCopy = name;
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  v72.receiver = self;
  v72.super_class = MTCoreMaterialVisualStyling;
  v14 = [(MTCoreMaterialVisualStyling *)&v72 init];
  v15 = v14;
  if (v14)
  {
    v52 = nameCopy;
    v54 = setCopy;
    objc_storeWeak(&v14->_visualStyleSet, setCopy);
    objc_storeStrong(&v15->_visualStyleName, name);
    v16 = [descriptionCopy objectForKey:@"tinting"];
    [(MTCoreMaterialVisualStyling *)v15 _processTintingDescription:v16];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v17 = [descriptionsCopy valueForKey:@"tinting"];
    v18 = [v17 countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v69;
      do
      {
        v21 = 0;
        do
        {
          if (*v69 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v68 + 1) + 8 * v21);
          null = [MEMORY[0x1E695DFB0] null];

          if (v22 != null)
          {
            [(MTCoreMaterialVisualStyling *)v15 _processTintingDescription:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v68 objects:v76 count:16];
      }

      while (v19);
    }

    v24 = [descriptionCopy objectForKey:@"blending"];
    [(MTCoreMaterialVisualStyling *)v15 _processBlendingDescription:v24];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v25 = [descriptionsCopy valueForKey:@"blending"];
    v26 = [v25 countByEnumeratingWithState:&v64 objects:v75 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v65;
      do
      {
        v29 = 0;
        do
        {
          if (*v65 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v64 + 1) + 8 * v29);
          null2 = [MEMORY[0x1E695DFB0] null];

          if (v30 != null2)
          {
            [(MTCoreMaterialVisualStyling *)v15 _processBlendingDescription:v30];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v64 objects:v75 count:16];
      }

      while (v27);
    }

    if (!v15->_compositingFilter)
    {
      v32 = [descriptionCopy objectForKey:@"filtering"];
      v33 = [(MTCoreMaterialVisualStyling *)v15 _preProcessFilteringDescription:v32];
      [(MTCoreMaterialVisualStyling *)v15 _processFilteringDescription:v33];

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v34 = [descriptionsCopy valueForKey:@"filtering"];
      v35 = [v34 countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v61;
        do
        {
          v38 = 0;
          do
          {
            if (*v61 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v60 + 1) + 8 * v38);
            null3 = [MEMORY[0x1E695DFB0] null];

            if (v39 != null3)
            {
              v41 = [(MTCoreMaterialVisualStyling *)v15 _preProcessFilteringDescription:v39];
              [(MTCoreMaterialVisualStyling *)v15 _processFilteringDescription:v41];
            }

            ++v38;
          }

          while (v36 != v38);
          v36 = [v34 countByEnumeratingWithState:&v60 objects:v74 count:16];
        }

        while (v36);
      }
    }

    v42 = [descriptionCopy objectForKey:{@"userInfo", v52, v54}];
    [(MTCoreMaterialVisualStyling *)v15 _processUserInfoDescription:v42];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = [descriptionsCopy valueForKey:@"userInfo"];
    v44 = [v43 countByEnumeratingWithState:&v56 objects:v73 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v57;
      do
      {
        v47 = 0;
        do
        {
          if (*v57 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v56 + 1) + 8 * v47);
          null4 = [MEMORY[0x1E695DFB0] null];

          if (v48 != null4)
          {
            [(MTCoreMaterialVisualStyling *)v15 _processUserInfoDescription:v48];
          }

          ++v47;
        }

        while (v45 != v47);
        v45 = [v43 countByEnumeratingWithState:&v56 objects:v73 count:16];
      }

      while (v45);
    }

    nameCopy = v53;
    setCopy = v55;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)dealloc
{
  tintColor = self->_tintColor;
  if (tintColor)
  {
    CGColorRelease(tintColor);
  }

  v4.receiver = self;
  v4.super_class = MTCoreMaterialVisualStyling;
  [(MTCoreMaterialVisualStyling *)&v4 dealloc];
}

- (void)_processTintingDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy objectForKey:@"tintColor"];
  tintColorDescription = self->_tintColorDescription;
  self->_tintColorDescription = v4;

  tintColor = self->_tintColor;
  if (tintColor)
  {
    CGColorRelease(tintColor);
  }

  if (self->_tintColorDescription)
  {
    v7 = [MTColor colorWithDescription:?];
    self->_tintColor = CGColorRetain([v7 CGColor]);
  }

  else
  {
    self->_tintColor = 0;
  }

  v8 = [descriptionCopy objectForKey:@"tintAlpha"];
  if (v8)
  {
    v9 = [descriptionCopy objectForKey:@"tintAlpha"];
    [v9 floatValue];
    self->_tintAlpha = v10;
  }

  else
  {
    self->_tintAlpha = 1.0;
  }

  v11 = [descriptionCopy objectForKey:@"tintColorName"];
  tintColorName = self->_tintColorName;
  self->_tintColorName = v11;

  v13 = [descriptionCopy objectForKey:@"tintColorUIStyle"];
  if (v13)
  {
    v14 = [descriptionCopy objectForKey:@"tintColorUIStyle"];
    self->_tintColorUIStyle = [v14 integerValue];
  }

  else
  {
    self->_tintColorUIStyle = 0;
  }
}

- (void)_processBlendingDescription:(id)description
{
  descriptionCopy = description;
  v5 = [descriptionCopy objectForKey:@"compositingFilter"];
  compositingFilter = self->_compositingFilter;
  self->_compositingFilter = v5;

  objc_storeStrong(&self->_filterType, self->_compositingFilter);
  v7 = [descriptionCopy objectForKey:@"filterProperties"];

  filterProperties = self->_filterProperties;
  self->_filterProperties = v7;
}

- (id)_preProcessFilteringDescription:(id)description
{
  v55 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = descriptionCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = descriptionCopy;
  if (!v4)
  {
    v29 = *(MEMORY[0x1E6979280] + 48);
    v30 = *(MEMORY[0x1E6979280] + 32);
    v47 = v30;
    v48 = v29;
    v28 = *(MEMORY[0x1E6979280] + 64);
    v49 = v28;
    v26 = *MEMORY[0x1E6979280];
    v27 = *(MEMORY[0x1E6979280] + 16);
    v45 = *MEMORY[0x1E6979280];
    v46 = v27;
    v31 = descriptionCopy;
    v6 = descriptionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      v12 = *MEMORY[0x1E6979890];
      v33 = *MEMORY[0x1E6979848];
      v32 = *MEMORY[0x1E6979D78];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = [v14 objectForKey:{@"filterType", v26, v27, v28, v29, v30}];
          if ([v15 isEqualToString:v12])
          {
            v16 = [v14 objectForKey:@"filterProperties"];
            v17 = [v16 objectForKey:@"inputAmount"];
            [v17 floatValue];

            CAColorMatrixMakeSaturation();
            v35[2] = v47;
            v35[3] = v48;
            v35[4] = v49;
            v35[0] = v45;
            v35[1] = v46;
            CAColorMatrixConcat();
          }

          else if ([v15 isEqualToString:v33])
          {
            v18 = [v14 objectForKey:@"filterProperties"];
            v19 = [v18 objectForKey:@"inputAmount"];
            [v19 floatValue];

            CAColorMatrixMakeBrightness();
            CAColorMatrixConcat();
            v47 = v38;
            v48 = v39;
            v49 = v40;
            v45 = v36;
            v46 = v37;
          }

          else
          {
            if (![v15 isEqualToString:v32])
            {
              v47 = v30;
              v48 = v29;
              v49 = v28;
              v45 = v26;
              v46 = v27;

              goto LABEL_25;
            }

            v20 = [v14 objectForKey:@"filterProperties"];
            v21 = [v20 objectForKey:@"inputColorMatrix"];

            if (MTCAColorMatrixIsDictionaryRepresentation(v21))
            {
              MTCAColorMatrixMakeWithDictionaryRepresentation(v21, v35);
              CAColorMatrixConcat();
              v47 = v38;
              v48 = v39;
              v49 = v40;
              v45 = v36;
              v46 = v37;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    v38 = v47;
    v39 = v48;
    v40 = v49;
    v36 = v45;
    v37 = v46;
    if (MTCAColorMatrixIsIdentity(&v36))
    {
      v5 = 0;
    }

    else
    {
      v53[0] = *MEMORY[0x1E6979D78];
      v52[0] = @"filterType";
      v52[1] = @"filterProperties";
      v50 = @"inputColorMatrix";
      v38 = v47;
      v39 = v48;
      v40 = v49;
      v36 = v45;
      v37 = v46;
      v22 = MTCAColorMatrixCreateDictionaryRepresentation(&v36, *&v46);
      v51 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v53[1] = v23;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
    }

    descriptionCopy = v31;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_processFilteringDescription:(id)description
{
  descriptionCopy = description;
  v5 = [descriptionCopy objectForKey:@"filterType"];
  filterType = self->_filterType;
  self->_filterType = v5;

  v7 = [descriptionCopy objectForKey:@"filterProperties"];

  filterProperties = self->_filterProperties;
  self->_filterProperties = v7;

  if (self->_filterType && self->_filterProperties)
  {
    compositingFilter = self->_compositingFilter;
    self->_compositingFilter = 0;
  }
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

- (NSString)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v10 = @"MTDictionaryRepresentationOptionsIncludeOptimizationsKey";
  v11[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = MTVisualStylingSettingsCreateDictionaryRepresentation(self, v5);
  v7 = [v3 stringWithFormat:@"<%@: %p dictionary representation: %@>", v4, self, v6];;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)visualStyleSetName
{
  WeakRetained = objc_loadWeakRetained(&self->_visualStyleSet);
  visualStyleSetName = [WeakRetained visualStyleSetName];

  return visualStyleSetName;
}

- (void)_applyToLayer:(id)layer withColorBlock:(id)block
{
  layerCopy = layer;
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy && self->_tintColor)
  {
    (*(blockCopy + 2))(blockCopy);
  }

  tintAlpha = self->_tintAlpha;
  *&tintAlpha = tintAlpha;
  [layerCopy setOpacity:tintAlpha];
  if (self->_compositingFilter || self->_filterType)
  {
    superlayer = [layerCopy superlayer];
    [superlayer setAllowsGroupBlending:0];

    if (self->_compositingFilter)
    {
      _composedFilter = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      [layerCopy setCompositingFilter:_composedFilter];
    }

    else
    {
      filters = [layerCopy filters];
      v12 = filters;
      v13 = MEMORY[0x1E695E0F0];
      if (filters)
      {
        v13 = filters;
      }

      v14 = v13;

      _composedFilter = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      v15 = [v14 arrayByAddingObject:_composedFilter];

      [layerCopy setFilters:v15];
    }
  }
}

- (void)_getCompositingFilter:(id *)filter tintColor:(CGColor *)color
{
  compositingFilter = self->_compositingFilter;
  if (compositingFilter)
  {
    if (filter)
    {
      *filter = compositingFilter;
    }

    if (color)
    {
      *color = self->_tintColor;
    }
  }
}

- (void)_getFilterType:(id *)type vibrantColor:(CGColor *)color tintColor:(CGColor *)tintColor inputReversed:(BOOL *)reversed
{
  filterType = self->_filterType;
  if (filterType)
  {
    if (type)
    {
      *type = filterType;
    }

    if (color)
    {
      _composedFilter = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      *color = [_composedFilter valueForKey:@"inputColor0"];
    }

    if (tintColor)
    {
      _composedFilter2 = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      *tintColor = [_composedFilter2 valueForKey:@"inputColor1"];
    }

    if (reversed)
    {
      _composedFilter3 = [(MTCoreMaterialVisualStyling *)self _composedFilter];
      v13 = [_composedFilter3 valueForKey:@"inputReversed"];
      *reversed = [v13 BOOLValue];
    }
  }
}

@end