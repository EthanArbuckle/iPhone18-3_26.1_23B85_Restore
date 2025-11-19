uint64_t MTDynamicBlurRadiusGraphicsQuality()
{
  if (MTDynamicBlurRadiusGraphicsQuality_onceToken != -1)
  {
    MTDynamicBlurRadiusGraphicsQuality_cold_1();
  }

  if (MTDynamicBlurRadiusGraphicsQuality___dynamicBlurRadiusGraphicsQuality)
  {
    return 10;
  }

  else
  {
    return 100;
  }
}

uint64_t MTCompareBlurInputQualities(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (!MTIsValidBlurInputQuality(v4) || (MTIsValidBlurInputQuality(v3) & 1) == 0)
  {
    MTCompareBlurInputQualities_cold_1();
  }

  if ([(__CFString *)v4 isEqualToString:@"default"])
  {
    v5 = @"medium";
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  if ([(__CFString *)v3 isEqualToString:@"default"])
  {
    v7 = @"medium";
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  if (([(__CFString *)v6 isEqualToString:v8]& 1) != 0)
  {
    v9 = 0;
  }

  else if (([(__CFString *)v6 isEqualToString:@"low"]& 1) != 0)
  {
    v9 = -1;
  }

  else if (([(__CFString *)v6 isEqualToString:@"high"]& 1) != 0)
  {
    v9 = 1;
  }

  else if ([(__CFString *)v8 isEqualToString:@"low"])
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

id MTCAFilterCurvesInputValuesKeys()
{
  if (MTCAFilterCurvesInputValuesKeys_onceToken != -1)
  {
    MTCAFilterCurvesInputValuesKeys_cold_1();
  }

  v1 = MTCAFilterCurvesInputValuesKeys___curvesFilterInputValuesKeys;

  return v1;
}

uint64_t MTIsValidBlurInputQuality(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"default"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"low") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"medium"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"high"];
  }

  return v2;
}

id _MTGetCoreMaterialPlatformConfiguration()
{
  v0 = __platformConfiguration;
  if (!__platformConfiguration)
  {
    v1 = objc_alloc_init(MTCoreMaterialDefaultPlatformConfiguration);
    v2 = __platformConfiguration;
    __platformConfiguration = v1;

    v0 = __platformConfiguration;
  }

  return v0;
}

id MTFilterKeyPathForFilter(void *a1)
{
  v1 = a1;
  v2 = MTFilterKeyPathForFilter___filterKeyCache;
  if (!MTFilterKeyPathForFilter___filterKeyCache)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = MTFilterKeyPathForFilter___filterKeyCache;
    MTFilterKeyPathForFilter___filterKeyCache = v3;

    v2 = MTFilterKeyPathForFilter___filterKeyCache;
  }

  v5 = [v2 objectForKeyedSubscript:v1];
  if (!v5)
  {
    v5 = [@"filters" stringByAppendingFormat:@".%@", v1];
    [MTFilterKeyPathForFilter___filterKeyCache setObject:v5 forKeyedSubscript:v1];
  }

  return v5;
}

__CFString *_IdentityPropertyForFilterType(void *a1)
{
  v1 = a1;
  v2 = @"inputAmount";
  if ([v1 isEqualToString:*MEMORY[0x1E6979928]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E6979D70]))
  {
    v3 = kMTCAFilterPropertyNameInputRadius;
LABEL_4:
    v4 = *v3;
LABEL_5:

    v2 = v4;
    goto LABEL_6;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E6979880]])
  {
    v3 = kMTCAFilterPropertyNameInputColorMatrix;
    goto LABEL_4;
  }

  if ([v1 isEqualToString:*MEMORY[0x1E69798B8]])
  {
    v4 = 0;
    goto LABEL_5;
  }

LABEL_6:

  return v2;
}

uint64_t _IsIdentityProperty(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E6979310] mt_orderedFilterTypes];
  if ([v5 containsObject:v3])
  {
    v6 = _IdentityPropertyForFilterType(v3);
    v7 = [v4 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL _IsValueIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!_IsIdentityProperty(v6, a3))
  {
LABEL_6:
    IsIdentity = 0;
    goto LABEL_10;
  }

  if (![v6 isEqualToString:*MEMORY[0x1E6979880]])
  {
    if (([v6 isEqualToString:*MEMORY[0x1E6979810]] & 1) == 0)
    {
      [v5 floatValue];
      IsIdentity = MTIdentityValueForFilter(v6) == v8;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v5)
  {
    [v5 CAColorMatrixValue];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  IsIdentity = MTCAColorMatrixIsIdentity(v10);
LABEL_10:

  return IsIdentity;
}

BOOL MTCAColorMatrixIsIdentity(_OWORD *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return MTCAColorMatrixEqualToMatrix(v4, MEMORY[0x1E6979280]);
}

id MTMaterialCreateDictionaryRepresentation(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF90];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  v7 = _MTRecipeForRecipeWithOptions(v5, v3);

  v8 = [v3 objectForKey:@"MTDictionaryRepresentationOptionsBundleKey"];
  v9 = MTMaterialSettingsForRecipeFromBundle(v7, v8);

  if (v9)
  {
    v10 = [v9 baseMaterialSettings];
    v11 = MTTintingFilteringSettingsCreateDictionaryRepresentation(v10, v3);

    v6 = v11;
  }

  return v6;
}

id MTVisualStylingCreateDictionaryRepresentation(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _MTRecipeForRecipeWithOptions(a1, v9);
  v11 = [v9 objectForKey:@"MTDictionaryRepresentationOptionsBundleKey"];
  if (v11)
  {
    MTSharedVisualStyleSetForStyleNameFromBundle(v10, v11);
  }

  else
  {
    MTSharedVisualStyleSetForRecipeAndCategory(v10, v7);
  }
  v12 = ;
  v13 = v12;
  if (!v12 || ([v12 visualStylingForStyle:v8], (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (v15 = v14, MTVisualStylingSettingsCreateDictionaryRepresentation(v14, v9), v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  return v16;
}

__CFString *_MTRecipeForRecipeWithOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = [v4 objectForKey:@"MTDictionaryRepresentationOptionsReduceTransparencyKey"];
  v7 = [v6 BOOLValue];

  v8 = v5;
  if (v7)
  {
    if (([(__CFString *)v5 isEqualToString:@"platformChromeLight"]& 1) != 0)
    {
      v9 = MTCoreMaterialRecipePlatformChromeLightReduceTransparency;
    }

    else
    {
      v8 = v5;
      if (![(__CFString *)v5 isEqualToString:@"platformChromeDark"])
      {
        goto LABEL_8;
      }

      v10 = [v4 objectForKey:@"MTDictionaryRepresentationOptionsUserInterfaceLevelKey"];
      v11 = [v10 integerValue];

      v9 = MTCoreMaterialRecipePlatformChromeDarkReduceTransparency;
      if (v11 == 1)
      {
        v9 = MTCoreMaterialRecipePlatformChromeDarkReduceTransparencyLayer1;
      }
    }

    v8 = *v9;
  }

LABEL_8:

  return v8;
}

id MTMaterialSettingsForRecipeFromBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (v5 && ([v5 isEqualToString:@"none"] & 1) == 0)
  {
    v8 = _RecipeNameForCoreMaterialRecipe(v5);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;

    v7 = _SharedMaterialSettingsForRecipeWithNameFromBundle(v11, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _RecipeNameForCoreMaterialRecipe(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 isEqualToString:@"none"] & 1) == 0)
  {
    if (_LoadCoreMaterialRecipeNames_onceToken != -1)
    {
      _RecipeNameForCoreMaterialRecipe_cold_1();
    }

    if ([__coreMaterialRecipeNames containsObject:v2])
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MTSharedVisualStyleSetForRecipeAndCategory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = _RecipeNameForCoreMaterialRecipe(v3);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    v10 = v9;

    v11 = v5;
    v12 = _SharedMaterialSettingsForRecipeWithNameFromBundle(v10, 0);
    v13 = [v12 styleNameForCategory:v11];

    v6 = MTSharedVisualStyleSetForStyleNameFromBundle(v13, 0);

    v3 = v10;
  }

  return v6;
}

MTRecipeMaterialSettings *_SharedMaterialSettingsForRecipeWithNameFromBundle(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 || ([v3 isEqualToString:@"none"] & 1) != 0)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if (_SharedMaterialSettingsForRecipeWithNameFromBundle_onceToken != -1)
  {
    _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_1();
  }

  v6 = _RecipeNamesToSharedInstances();
  v5 = [v6 objectForKey:v3];

  if (!v5)
  {
    os_unfair_lock_lock(&_SharedMaterialSettingsForRecipeWithNameFromBundle___lock);
    v34 = [MEMORY[0x1E696AAE8] coreMaterialOverrideRecipeBundle];
    v33 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
    v7 = v3;
    v8 = 0;
    v9 = v7;
    v32 = v7;
    while (1)
    {
      v10 = [v4 URLForMaterialRecipeDescendant:v7];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v12 = [v34 URLForMaterialRecipeDescendant:v7];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [v33 URLForMaterialRecipeDescendant:v7];
        }

        v11 = v14;

        if (!v11)
        {
          v21 = v9;
LABEL_32:
          v24 = [v4 URLForMaterialRecipe:v21];
          if (v24 || ([v34 URLForMaterialRecipe:v21], (v24 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v33, "URLForMaterialRecipe:", v21), (v24 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v25 = v24;
            v35 = 0;
            v26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v24 error:&v35];
            v27 = v35;
            v28 = v27;
            if (!v26 || v27)
            {
              if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
              {
                _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_4();
              }

              v5 = 0;
            }

            else
            {
              if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
              {
                _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_2();
              }

              v5 = [[MTRecipeMaterialSettings alloc] initWithRecipeName:v32 andDescription:v26 descendantDescriptions:v8 bundle:v4];
              if (v5)
              {
                v29 = _RecipeNamesToSharedInstances();
                [v29 setObject:v5 forKey:v32];

                if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
                {
                  _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_3();
                }
              }
            }
          }

          else
          {
            v5 = 0;
          }

          os_unfair_lock_unlock(&_SharedMaterialSettingsForRecipeWithNameFromBundle___lock);

          break;
        }
      }

      v15 = objc_alloc(MEMORY[0x1E695DF20]);
      v36 = 0;
      v16 = [v15 initWithContentsOfURL:v11 error:&v36];
      v17 = v36;
      v18 = v17;
      v19 = MTLogConfiguration;
      if (v16)
      {
        v20 = v17 == 0;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v38 = v11;
          _os_log_debug_impl(&dword_1BF527000, v19, OS_LOG_TYPE_DEBUG, "Loaded descendant material recipe plist at URL: %{public}@", buf, 0xCu);
        }

        v21 = [v16 objectForKey:@"ancestorRecipe"];

        v22 = [v16 objectForKey:@"descendantDescription"];
        v23 = v22;
        v7 = 0;
        if (v21 && v22)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v8 insertObject:v23 atIndex:0];
          v7 = v21;
        }
      }

      else
      {
        if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v38 = v11;
          v39 = 2114;
          v40 = v18;
          _os_log_error_impl(&dword_1BF527000, v19, OS_LOG_TYPE_ERROR, "Failed to load descendant material recipe plist at URL (%{public}@): %{public}@", buf, 0x16u);
        }

        v7 = 0;
        v21 = v9;
      }

      v9 = v21;
      if (!v7)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_47:

  v30 = *MEMORY[0x1E69E9840];

  return v5;
}

id _RecipeNamesToSharedInstances()
{
  if (_RecipeNamesToSharedInstances_onceToken != -1)
  {
    _RecipeNamesToSharedInstances_cold_1();
  }

  v1 = _RecipeNamesToSharedInstances___recipeNamesToSharedInstances;

  return v1;
}

id MTTintingFilteringSettingsCreateDictionaryRepresentation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v6 = [v4 objectForKey:@"MTDictionaryRepresentationOptionsIncludeOptimizationsKey"];
    v7 = [v6 BOOLValue];

    v8 = +[MTColor colorWithCGColor:](MTColor, "colorWithCGColor:", [v3 tintColor]);
    [v3 tintAlpha];
    v9 = [v8 colorWithAlphaComponent:?];
    [v5 setTintColor:v9 includingOptimizations:v7 withAdditionalInfoPromise:0];

    v10 = [v3 luminanceValues];
    [v3 luminanceAmount];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = &__block_literal_global_7;
    }

    [v5 setLuminanceAmount:v10 values:1 ignoringIdentity:v7 includingOptimizations:v11 withAdditionalInfoPromise:?];
    v12 = [v4 objectForKey:@"MTDictionaryRepresentationOptionsReduceTransparencyKey"];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      [v3 saturation];
      v14 = 1;
      [v5 setSaturation:1 ignoringIdentity:v7 includingOptimizations:0 withAdditionalInfoPromise:?];
      [v3 brightness];
      [v5 setBrightness:1 ignoringIdentity:v7 includingOptimizations:0 withAdditionalInfoPromise:?];
    }

    else
    {
      [v3 blurRadius];
      v16 = v15;
      v17 = [v3 variableBlurInputMask];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __MTTintingFilteringSettingsCreateDictionaryRepresentation_block_invoke_2;
      v29[3] = &unk_1E80BE028;
      v31 = v7;
      v18 = v3;
      v30 = v18;
      [v5 setBlurRadius:v17 inputMaskImage:1 ignoringIdentity:v7 includingOptimizations:v29 withAdditionalInfoPromise:v16];

      [v18 saturation];
      [v5 setSaturation:1 ignoringIdentity:v7 includingOptimizations:0 withAdditionalInfoPromise:?];
      [v18 brightness];
      [v5 setBrightness:1 ignoringIdentity:v7 includingOptimizations:0 withAdditionalInfoPromise:?];
      v14 = [v18 isAverageColorEnabled];
    }

    [v5 setAverageColorEnabled:v14 includingOptimizations:v7 withAdditionalInfoPromise:0];
    [v3 zoom];
    [v5 setZoom:1 ignoringIdentity:v7 includingOptimizations:0 withAdditionalInfoPromise:?];
    [v3 colorMatrix];
    [v5 setColorMatrix:&v28 ignoringIdentity:1 includingOptimizations:v7 withAdditionalInfoPromise:0];
    v19 = [v3 curvesValues];
    [v5 setCurvesInputValues:v19 ignoringIdentity:1 includingOptimizations:v7 withAdditionalInfoPromise:0];

    if (v7)
    {
      v20 = MEMORY[0x1E696AD98];
      [v3 backdropScale];
      v21 = [v20 numberWithDouble:?];
      v22 = [v21 mt_isIdentityValueForMaterialSettingsProperty:@"backdropScale"];

      if ((v22 & 1) == 0)
      {
        v23 = MEMORY[0x1E696AD98];
        [v3 backdropScale];
        v24 = [v23 numberWithDouble:?];
        [v5 setObject:v24 forKey:@"scale"];
      }
    }

    if ([v3 isBlurAtEnd])
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypesBlurAtEnd];
    }

    else
    {
      [MEMORY[0x1E6979310] mt_orderedFilterTypes];
    }
    v25 = ;
    [v5 sortFiltersWithOrder:v25];
    v26 = [v3 userInfo];
    if (v26)
    {
      [v5 setObject:v26 forKey:@"userInfo"];
    }
  }

  return v5;
}

MTVisualStyleSet *MTSharedVisualStyleSetForStyleNameFromBundle(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v32 = _StylesToSharedInstances();
    v5 = [v32 objectForKey:v3];
    if (!v5)
    {
      obj = v32;
      objc_sync_enter(obj);
      v33 = [MEMORY[0x1E696AAE8] coreMaterialOverrideRecipeBundle];
      v31 = [MEMORY[0x1E696AAE8] coreMaterialRecipeBundle];
      v6 = v3;
      v7 = 0;
      *&v8 = 138543362;
      v28 = v8;
      v9 = v6;
      v29 = v6;
      do
      {
        v10 = [v4 URLForVisualStyleSetDescendant:{v6, v28}];
        if (v10)
        {
        }

        else
        {
          v11 = [v33 URLForVisualStyleSetDescendant:v6];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = [v31 URLForVisualStyleSetDescendant:v6];
          }

          v10 = v13;

          if (!v10)
          {
            break;
          }
        }

        v14 = objc_alloc(MEMORY[0x1E695DF20]);
        v35 = 0;
        v15 = [v14 initWithContentsOfURL:v10 error:&v35];
        v16 = v35;
        v17 = v16;
        v18 = MTLogConfiguration;
        if (!v15 || v16)
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v37 = v10;
            v38 = 2114;
            v39 = v17;
            _os_log_error_impl(&dword_1BF527000, v18, OS_LOG_TYPE_ERROR, "Failed to load descendant style set plist at URL (%{public}@): %{public}@", buf, 0x16u);
          }

          v6 = 0;
        }

        else
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
          {
            *buf = v28;
            v37 = v10;
            _os_log_debug_impl(&dword_1BF527000, v18, OS_LOG_TYPE_DEBUG, "Loaded descendant style set plist at URL: %{public}@", buf, 0xCu);
          }

          v19 = [v15 objectForKey:@"ancestorStyleSet"];

          v20 = [v15 objectForKey:@"descendantDescription"];
          v21 = v20;
          v6 = 0;
          if (v19 && v20)
          {
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v7 insertObject:v21 atIndex:0];
            v6 = v19;
          }

          v9 = v19;
        }
      }

      while (v6);
      v22 = [v4 URLForVisualStyleSet:v9];
      if (v22 || ([v33 URLForVisualStyleSet:v9], (v22 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v31, "URLForVisualStyleSet:", v9), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v34 = 0;
        v23 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v22 error:&v34];
        v24 = v34;
        v25 = v24;
        if (!v23 || v24)
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
          {
            MTSharedVisualStyleSetForStyleNameFromBundle_cold_3();
          }

          v5 = 0;
        }

        else
        {
          if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
          {
            MTSharedVisualStyleSetForStyleNameFromBundle_cold_1();
          }

          v5 = [[MTVisualStyleSet alloc] initWithName:v29 visualStyleSetDescription:v23 andDescendantDescriptions:v7];
          if (v5)
          {
            [obj setObject:v5 forKey:v29];
            if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEBUG))
            {
              MTSharedVisualStyleSetForStyleNameFromBundle_cold_2();
            }
          }
        }
      }

      else
      {
        v5 = 0;
      }

      objc_sync_exit(obj);
    }
  }

  else
  {
    v5 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v5;
}

id _StylesToSharedInstances()
{
  if (_StylesToSharedInstances_onceToken != -1)
  {
    _StylesToSharedInstances_cold_1();
  }

  v1 = _StylesToSharedInstances___stylesToSharedInstances;

  return v1;
}

double MTIdentityValueForFilter(void *a1)
{
  v1 = [a1 isEqualToString:*MEMORY[0x1E6979890]];
  result = 0.0;
  if (v1)
  {
    return 1.0;
  }

  return result;
}

id __MTTintingFilteringSettingsCreateDictionaryRepresentation_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [*(a1 + 32) blurInputQuality];
    v4 = [v3 isEqualToString:@"default"];

    if ((v4 & 1) == 0)
    {
      v5 = [*(a1 + 32) blurInputQuality];
      [v2 setObject:v5 forKey:@"inputQuality"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CGColorSpaceRef __GrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
  GrayColorSpace___GrayColorSpace = result;
  return result;
}

id MTAllOrdinalVisualStyles()
{
  if (MTAllOrdinalVisualStyles_onceToken != -1)
  {
    MTAllOrdinalVisualStyles_cold_1();
  }

  v1 = MTAllOrdinalVisualStyles___visualStyles;

  return v1;
}

void __MTAllOrdinalVisualStyles_block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"primary";
  v3[1] = @"secondary";
  v3[2] = @"tertiary";
  v3[3] = @"quaternary";
  v3[4] = @"highlight";
  v3[5] = @"separator";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = MTAllOrdinalVisualStyles___visualStyles;
  MTAllOrdinalVisualStyles___visualStyles = v0;

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t MTCompareObjectsWithOrder(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 indexOfObject:a1];
  v8 = [v5 indexOfObject:v6];

  if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return v7 > v8;
  }
}

void __MTAllPlatformColorVisualStyles_block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"platformGray";
  v3[1] = @"platformBlue";
  v3[2] = @"platformTeal";
  v3[3] = @"platformOrange";
  v3[4] = @"platformGreen";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v1 = MTAllPlatformColorVisualStyles___systemColorVisualStyles;
  MTAllPlatformColorVisualStyles___systemColorVisualStyles = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id MTAllPlatformColorVisualStyles()
{
  if (MTAllPlatformColorVisualStyles_onceToken != -1)
  {
    MTAllPlatformColorVisualStyles_cold_1();
  }

  v1 = MTAllPlatformColorVisualStyles___systemColorVisualStyles;

  return v1;
}

id MTVisualStylingSettingsCreateDictionaryRepresentation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v6 = [v3 tintColorDescription];

    if (v6)
    {
      v7 = [v3 tintColorDescription];
      [v5 setObject:v7 forKey:@"tintColor"];

      v8 = MEMORY[0x1E696AD98];
      [v3 tintAlpha];
      v9 = [v8 numberWithDouble:?];
      [v5 setObject:v9 forKey:@"tintAlpha"];
    }

    v10 = [v3 compositingFilter];
    if (v10 && ([v4 objectForKey:@"MTDictionaryRepresentationOptionsFiltersRepresentationV2Key"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, !v12))
    {
      [v5 setObject:v10 forKey:@"compositingFilter"];
    }

    else
    {
      v13 = [v3 filterType];
      v14 = [v3 filterProperties];
      v15 = MTComposedFilterCreateDictionaryRepresentation(v13, v14, v10 != 0);
      [v5 addEntriesFromDictionary:v15];
    }

    v16 = [v3 userInfo];
    if (v16)
    {
      [v5 setObject:v16 forKey:@"userInfo"];
    }
  }

  return v5;
}

id MTComposedFilterCreateDictionaryRepresentation(void *a1, void *a2, uint64_t a3)
{
  v100[7] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v73 = a3;
  [v7 setValue:0 forProperty:0 ofFilter:v5 isCompositingFilter:a3];
  v8 = [v6 mutableCopy];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v5;
  v70 = v8;
  v11 = v9;
  v12 = v10;
  v13 = v11;
  v69 = v6;
  if ([v10 isEqualToString:*MEMORY[0x1E6979D88]])
  {
    [v13 setObject:@"inputColor0" forKeyedSubscript:@"colorDodge"];
    v14 = kMTCAFilterPropertyNameInputColorLighten;
  }

  else
  {
    if (![v10 isEqualToString:*MEMORY[0x1E6979D90]])
    {
      v15 = v70;
      if ([v10 isEqualToString:*MEMORY[0x1E6979D78]])
      {
        v68 = v13;
        obja = v7;
        v40 = objc_alloc(MEMORY[0x1E695DEC8]);
        v41 = [v70 objectForKeyedSubscript:?];
        v42 = v41;
        if (!v41)
        {
          v42 = [v70 objectForKeyedSubscript:@"darkenShadows"];
        }

        v43 = [v70 objectForKeyedSubscript:?];
        v44 = v43;
        if (!v43)
        {
          v44 = [v70 objectForKeyedSubscript:@"increaseSaturation"];
        }

        v45 = [v70 objectForKeyedSubscript:?];
        v46 = [v70 objectForKeyedSubscript:?];
        v47 = [v70 objectForKeyedSubscript:?];
        v48 = v40;
        v49 = v42;
        v50 = [v48 initWithObjects:{v42, v44, v45, v46, v47, 0}];

        if (!v43)
        {
        }

        v13 = v68;
        if (!v41)
        {
        }

        v100[0] = @"darkenShadowHighlights";
        v100[1] = @"darkenShadows";
        v100[2] = @"saturationAdjustment";
        v100[3] = @"increaseSaturation";
        v100[4] = @"darkenAll";
        v100[5] = @"blueYellowContrast";
        v100[6] = @"redGreenContrast";
        v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:7];
        v15 = v70;
        [v70 removeObjectsForKeys:v51];

        v7 = obja;
        if ([v50 count] >= 3)
        {
          v52 = *(MEMORY[0x1E6979280] + 48);
          v91 = *(MEMORY[0x1E6979280] + 32);
          v92 = v52;
          v93 = *(MEMORY[0x1E6979280] + 64);
          v53 = *(MEMORY[0x1E6979280] + 16);
          v89 = *MEMORY[0x1E6979280];
          v90 = v53;
          v54 = [v50 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v56 = v50;
            v57 = [v56 countByEnumeratingWithState:&v85 objects:&v95 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v86;
              do
              {
                for (i = 0; i != v58; ++i)
                {
                  if (*v86 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  MTCAColorMatrixMakeWithDictionaryRepresentation(*(*(&v85 + 1) + 8 * i), v84);
                  v81 = v91;
                  v82 = v92;
                  v83 = v93;
                  v79 = v89;
                  v80 = v90;
                  CAColorMatrixConcat();
                }

                v58 = [v56 countByEnumeratingWithState:&v85 objects:&v95 count:16];
              }

              while (v58);
            }
          }

          else
          {
            v56 = [v50 objectAtIndexedSubscript:0];
            [v56 floatValue];
            v62 = v61;
            v63 = [v50 objectAtIndexedSubscript:1];
            [v63 floatValue];
            v64 = [v50 objectAtIndexedSubscript:2];
            [v64 floatValue];
            v65 = [v50 count];
            if (v65 >= 4)
            {
              v46 = [v50 objectAtIndexedSubscript:3];
              [v46 floatValue];
            }

            if ([v50 count] <= 4)
            {
              MTCAColorMatrixMakeWithVibrantShadowAttributes(&v95, v62);
              v91 = v97;
              v92 = v98;
              v93 = v99;
              v89 = v95;
              v90 = v96;
            }

            else
            {
              v66 = [v50 objectAtIndexedSubscript:4];
              [v66 floatValue];
              MTCAColorMatrixMakeWithVibrantShadowAttributes(&v95, v62);
              v91 = v97;
              v92 = v98;
              v93 = v99;
              v89 = v95;
              v90 = v96;
            }

            if (v65 >= 4)
            {
            }

            v7 = obja;
            v13 = v68;
          }

          v84[2] = v91;
          v84[3] = v92;
          v84[4] = v93;
          v84[0] = v89;
          v84[1] = v90;
          v67 = MTCAColorMatrixCreateDictionaryRepresentation(v84, *&v90);
          [v70 setObject:v67 forKeyedSubscript:@"inputColorMatrix"];
        }
      }

      goto LABEL_6;
    }

    [v13 setObject:@"inputColor0" forKeyedSubscript:@"colorBurn"];
    v14 = kMTCAFilterPropertyNameInputColorDarken;
  }

  [v13 setObject:@"inputColor1" forKeyedSubscript:*v14];
  v15 = v70;
LABEL_6:

  v16 = [v15 allKeys];
  v17 = [v13 allKeys];
  v18 = [v16 arrayByAddingObjectsFromArray:v17];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v19;
  v21 = *v76;
  do
  {
    for (j = 0; j != v20; ++j)
    {
      if (*v76 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v75 + 1) + 8 * j);
      v24 = v13;
      v25 = [v13 objectForKey:v23];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      v28 = v27;

      v29 = [v15 objectForKey:v23];
      if (v29)
      {
        v30 = v29;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v12;
          v32 = v7;
          v33 = [MTColor colorWithDescription:v30];
          v34 = v33;
          if (v33)
          {
            v35 = [v33 CGColor];
            goto LABEL_20;
          }

          if (MTCAColorMatrixIsDictionaryRepresentation(v30))
          {
            v36 = MEMORY[0x1E696B098];
            MTCAColorMatrixMakeWithDictionaryRepresentation(v30, v74);
            v35 = [v36 valueWithBytes:v74 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
LABEL_20:
            v37 = v35;

            v30 = v37;
          }

          v7 = v32;
          v12 = v31;
          v15 = v70;
        }

        [v7 setValue:v30 forProperty:v28 ofFilter:v12 isCompositingFilter:v73];
      }

      v13 = v24;
    }

    v20 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
  }

  while (v20);
LABEL_25:

  v38 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t MTCAColorMatrixIsDictionaryRepresentation(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"m11"];
  if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v2, v2))
  {
    v3 = [v1 objectForKeyedSubscript:@"m12"];
    if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v3, v3))
    {
      v4 = [v1 objectForKeyedSubscript:@"m13"];
      if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v4, v4))
      {
        v5 = [v1 objectForKeyedSubscript:@"m14"];
        if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v5, v5))
        {
          v6 = [v1 objectForKeyedSubscript:@"m15"];
          if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v6, v6))
          {
            v7 = [v1 objectForKeyedSubscript:@"m21"];
            if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v7, v7))
            {
              v8 = [v1 objectForKeyedSubscript:@"m22"];
              if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v8, v8))
              {
                v9 = [v1 objectForKeyedSubscript:@"m23"];
                if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v9, v9))
                {
                  v23 = [v1 objectForKeyedSubscript:@"m24"];
                  if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v23, v23))
                  {
                    v22 = [v1 objectForKeyedSubscript:@"m25"];
                    if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v22, v22))
                    {
                      v21 = [v1 objectForKeyedSubscript:@"m31"];
                      if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v21, v21))
                      {
                        v20 = [v1 objectForKeyedSubscript:@"m32"];
                        if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v20, v20))
                        {
                          v19 = [v1 objectForKeyedSubscript:@"m33"];
                          if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v19, v19))
                          {
                            v18 = [v1 objectForKeyedSubscript:@"m34"];
                            if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v18, v18))
                            {
                              v17 = [v1 objectForKeyedSubscript:@"m35"];
                              if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v17, v17))
                              {
                                v16 = [v1 objectForKeyedSubscript:@"m41"];
                                if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v16, v16))
                                {
                                  v15 = [v1 objectForKeyedSubscript:@"m42"];
                                  if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v15, v15))
                                  {
                                    v14 = [v1 objectForKeyedSubscript:@"m43"];
                                    if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v14, v14))
                                    {
                                      v13 = [v1 objectForKeyedSubscript:@"m44"];
                                      if (__MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v13, v13))
                                      {
                                        v12 = [v1 objectForKeyedSubscript:@"m45"];
                                        v10 = __MTCAColorMatrixIsDictionaryRepresentation_block_invoke(v12, v12);
                                      }

                                      else
                                      {
                                        v10 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v10 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v10 = 0;
                                  }
                                }

                                else
                                {
                                  v10 = 0;
                                }
                              }

                              else
                              {
                                v10 = 0;
                              }
                            }

                            else
                            {
                              v10 = 0;
                            }
                          }

                          else
                          {
                            v10 = 0;
                          }
                        }

                        else
                        {
                          v10 = 0;
                        }
                      }

                      else
                      {
                        v10 = 0;
                      }
                    }

                    else
                    {
                      v10 = 0;
                    }
                  }

                  else
                  {
                    v10 = 0;
                  }
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
                v10 = 0;
              }
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __MTCAColorMatrixIsDictionaryRepresentation_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void MTCAColorMatrixMakeWithDictionaryRepresentation(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = MEMORY[0x1E6979280];
  v5 = *(MEMORY[0x1E6979280] + 48);
  *(a2 + 32) = *(MEMORY[0x1E6979280] + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4[4];
  v6 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v6;
  if (v3)
  {
    v67 = v3;
    v7 = [v3 objectForKeyedSubscript:@"m11"];
    if (v7)
    {
      v8 = [v67 objectForKeyedSubscript:@"m11"];
      [v8 floatValue];
      *a2 = v9;
    }

    v10 = [v67 objectForKeyedSubscript:@"m12"];
    if (v10)
    {
      v11 = [v67 objectForKeyedSubscript:@"m12"];
      [v11 floatValue];
      *(a2 + 4) = v12;
    }

    v13 = [v67 objectForKeyedSubscript:@"m13"];
    if (v13)
    {
      v14 = [v67 objectForKeyedSubscript:@"m13"];
      [v14 floatValue];
      *(a2 + 8) = v15;
    }

    v16 = [v67 objectForKeyedSubscript:@"m14"];
    if (v16)
    {
      v17 = [v67 objectForKeyedSubscript:@"m14"];
      [v17 floatValue];
      *(a2 + 12) = v18;
    }

    v19 = [v67 objectForKeyedSubscript:@"m15"];
    if (v19)
    {
      v20 = [v67 objectForKeyedSubscript:@"m15"];
      [v20 floatValue];
      *(a2 + 16) = v21;
    }

    v22 = [v67 objectForKeyedSubscript:@"m21"];
    if (v22)
    {
      v23 = [v67 objectForKeyedSubscript:@"m21"];
      [v23 floatValue];
      *(a2 + 20) = v24;
    }

    v25 = [v67 objectForKeyedSubscript:@"m22"];
    if (v25)
    {
      v26 = [v67 objectForKeyedSubscript:@"m22"];
      [v26 floatValue];
      *(a2 + 24) = v27;
    }

    v28 = [v67 objectForKeyedSubscript:@"m23"];
    if (v28)
    {
      v29 = [v67 objectForKeyedSubscript:@"m23"];
      [v29 floatValue];
      *(a2 + 28) = v30;
    }

    v31 = [v67 objectForKeyedSubscript:@"m24"];
    if (v31)
    {
      v32 = [v67 objectForKeyedSubscript:@"m24"];
      [v32 floatValue];
      *(a2 + 32) = v33;
    }

    v34 = [v67 objectForKeyedSubscript:@"m25"];
    if (v34)
    {
      v35 = [v67 objectForKeyedSubscript:@"m25"];
      [v35 floatValue];
      *(a2 + 36) = v36;
    }

    v37 = [v67 objectForKeyedSubscript:@"m31"];
    if (v37)
    {
      v38 = [v67 objectForKeyedSubscript:@"m31"];
      [v38 floatValue];
      *(a2 + 40) = v39;
    }

    v40 = [v67 objectForKeyedSubscript:@"m32"];
    if (v40)
    {
      v41 = [v67 objectForKeyedSubscript:@"m32"];
      [v41 floatValue];
      *(a2 + 44) = v42;
    }

    v43 = [v67 objectForKeyedSubscript:@"m33"];
    if (v43)
    {
      v44 = [v67 objectForKeyedSubscript:@"m33"];
      [v44 floatValue];
      *(a2 + 48) = v45;
    }

    v46 = [v67 objectForKeyedSubscript:@"m34"];
    if (v46)
    {
      v47 = [v67 objectForKeyedSubscript:@"m34"];
      [v47 floatValue];
      *(a2 + 52) = v48;
    }

    v49 = [v67 objectForKeyedSubscript:@"m35"];
    if (v49)
    {
      v50 = [v67 objectForKeyedSubscript:@"m35"];
      [v50 floatValue];
      *(a2 + 56) = v51;
    }

    v52 = [v67 objectForKeyedSubscript:@"m41"];
    if (v52)
    {
      v53 = [v67 objectForKeyedSubscript:@"m41"];
      [v53 floatValue];
      *(a2 + 60) = v54;
    }

    v55 = [v67 objectForKeyedSubscript:@"m42"];
    if (v55)
    {
      v56 = [v67 objectForKeyedSubscript:@"m42"];
      [v56 floatValue];
      *(a2 + 64) = v57;
    }

    v58 = [v67 objectForKeyedSubscript:@"m43"];
    if (v58)
    {
      v59 = [v67 objectForKeyedSubscript:@"m43"];
      [v59 floatValue];
      *(a2 + 68) = v60;
    }

    v61 = [v67 objectForKeyedSubscript:@"m44"];
    if (v61)
    {
      v62 = [v67 objectForKeyedSubscript:@"m44"];
      [v62 floatValue];
      *(a2 + 72) = v63;
    }

    v64 = [v67 objectForKeyedSubscript:@"m45"];
    if (v64)
    {
      v65 = [v67 objectForKeyedSubscript:@"m45"];
      [v65 floatValue];
      *(a2 + 76) = v66;
    }

    v3 = v67;
  }
}

void MTRegisterCoreMaterialLogging()
{
  if (MTRegisterCoreMaterialLogging_onceToken != -1)
  {
    MTRegisterCoreMaterialLogging_cold_1();
  }
}

uint64_t __MTRegisterCoreMaterialLogging_block_invoke()
{
  v0 = os_log_create(MTLogSubsystem, "Materials");
  v1 = MTLogMaterials;
  MTLogMaterials = v0;

  MTLogConfiguration = os_log_create(MTLogSubsystem, "Configuration");

  return MEMORY[0x1EEE66BB8]();
}

void __MTDynamicBlurRadiusGraphicsQuality_block_invoke()
{
  v0 = _MTLowQualityDevicesForDynamicBlurRadius();
  v1 = _MTCurrentProduct();
  v2 = [v0 containsObject:v1];

  if (v2)
  {
    MTDynamicBlurRadiusGraphicsQuality___dynamicBlurRadiusGraphicsQuality = 1;
  }
}

id _MTLowQualityDevicesForDynamicBlurRadius()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"iPad5, 1", @"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad7, 1", @"iPad7, 2", 0}];

  return v0;
}

id _MTCurrentProduct()
{
  if (_MTCurrentProduct_onceToken != -1)
  {
    _MTCurrentProduct_cold_1();
  }

  v1 = _MTCurrentProduct___currentProduct;

  return v1;
}

CGImageRef MTCGImageCreateWithName(void *a1, void *a2, double a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreMaterial"];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    v31[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    if (a3 <= 0.0)
    {
      a3 = MTBuiltInScreenScale();
    }

    if (a3 == 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = [v9 mutableCopy];
      v11 = a3;
      if (a3 >= 1)
      {
        v12 = [v8 stringByAppendingFormat:@"@%ldx", 1];
        if (v11 != 1)
        {
          v13 = 2;
          do
          {
            [v10 insertObject:v12 atIndex:0];

            v12 = [v8 stringByAppendingFormat:@"@%ldx", v13];
            ++v13;
          }

          while (1 - v11 + v13 != 2);
        }

        if (v12)
        {
          [v10 insertObject:v12 atIndex:0];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v14 = v10;
  }

  v15 = v14;

  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v6 URLForResource:*(*(&v26 + 1) + 8 * i) withExtension:@"png"];
        if (v20)
        {
          v21 = v20;
          goto LABEL_28;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_28:

  v22 = CGDataProviderCreateWithURL(v21);
  v23 = CGImageCreateWithPNGDataProvider(v22, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v22);

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

double MTBuiltInScreenScale()
{
  if (MTBuiltInScreenScale_onceToken != -1)
  {
    MTBuiltInScreenScale_cold_1();
  }

  return *&MTBuiltInScreenScale___builtInScreenScale;
}

double __MTBuiltInScreenScale_block_invoke()
{
  MGGetFloat32Answer();
  result = v0;
  MTBuiltInScreenScale___builtInScreenScale = *&result;
  return result;
}

id MTProtocolGetProperties(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  outCount = 0;
  if (a2)
  {
    v5 = protocol_copyPropertyList2(v3, &outCount, 1, 1);
  }

  else
  {
    v5 = 0;
  }

  v13 = 0;
  if ((a2 & 2) != 0)
  {
    v7 = protocol_copyPropertyList2(v3, &v13, 0, 1);
    v6 = v13;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = outCount;
  if (v6 + outCount)
  {
    v9 = 0;
    do
    {
      if (v9 >= v8)
      {
        v10 = v7;
      }

      else
      {
        v8 = 0;
        v10 = v5;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(v10[v9 - v8])];
      [v4 addObject:v11];

      ++v9;
      v8 = outCount;
    }

    while (v9 < v13 + outCount);
  }

  if (v5)
  {
    free(v5);
  }

  if (v7)
  {
    free(v7);
  }

  return v4;
}

void __MTCAFilterCurvesInputValuesKeys_block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6979B38];
  v5[0] = *MEMORY[0x1E6979BB0];
  v5[1] = v0;
  v1 = *MEMORY[0x1E6979988];
  v5[2] = *MEMORY[0x1E6979A28];
  v5[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = MTCAFilterCurvesInputValuesKeys___curvesFilterInputValuesKeys;
  MTCAFilterCurvesInputValuesKeys___curvesFilterInputValuesKeys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t MTDimensionsForContinuousCornerRadiusInBounds(uint64_t result)
{
  if (result)
  {
    return [MEMORY[0x1E6979398] cornerCurveExpansionFactor:{*MEMORY[0x1E69796E8], 1.0}];
  }

  return result;
}

double MTResizableAreaForCornerDimensionsInBounds(double a1, double a2, double a3, double a4, double a5)
{
  v7 = 1.0 / a3;
  if (MTFloatEqualToFloat(a1 + a1, a4))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  MTFloatEqualToFloat(a2 + a2, a5);
  return v8;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

float32x4_t MTCAColorMatrixInterpolate@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, double a4@<D0>)
{
  v4 = fmax(fmin(a4, 1.0), 0.0);
  v5 = a1[1];
  v6 = vsubq_f32(*a2, *a1);
  v7 = vcvtq_f64_f32(*v5.f32);
  v8 = vcvt_hight_f64_f32(v5);
  v9 = vsubq_f32(a2[1], v5);
  *a3 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*a1->f32), vcvtq_f64_f32(*v6.f32), v4)), vmlaq_n_f64(vcvt_hight_f64_f32(*a1), vcvt_hight_f64_f32(v6), v4));
  a3[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v7, vcvtq_f64_f32(*v9.f32), v4)), vmlaq_n_f64(v8, vcvt_hight_f64_f32(v9), v4));
  v10 = a1[2];
  v11 = a1[3];
  v12 = vsubq_f32(a2[2], v10);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v10.f32), vcvtq_f64_f32(*v12.f32), v4)), vmlaq_n_f64(vcvt_hight_f64_f32(v10), vcvt_hight_f64_f32(v12), v4));
  v14 = vsubq_f32(a2[3], v11);
  a3[2] = v13;
  a3[3] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v11.f32), vcvtq_f64_f32(*v14.f32), v4)), vmlaq_n_f64(vcvt_hight_f64_f32(v11), vcvt_hight_f64_f32(v14), v4));
  v15 = a1[4];
  v16 = vcvtq_f64_f32(*v15.f32);
  v17 = vcvt_hight_f64_f32(v15);
  v18 = vsubq_f32(a2[4], v15);
  result = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v16, vcvtq_f64_f32(*v18.f32), v4)), vmlaq_n_f64(v17, vcvt_hight_f64_f32(v18), v4));
  a3[4] = result;
  return result;
}

id MTCAColorMatrixCreateDictionaryRepresentation(_DWORD *a1, double a2)
{
  v46[20] = *MEMORY[0x1E69E9840];
  v45[0] = @"m11";
  LODWORD(a2) = *a1;
  v44 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v46[0] = v44;
  v45[1] = @"m12";
  LODWORD(v3) = a1[1];
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v46[1] = v43;
  v45[2] = @"m13";
  LODWORD(v4) = a1[2];
  v42 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v46[2] = v42;
  v45[3] = @"m14";
  LODWORD(v5) = a1[3];
  v41 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v46[3] = v41;
  v45[4] = @"m15";
  LODWORD(v6) = a1[4];
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v46[4] = v40;
  v45[5] = @"m21";
  LODWORD(v7) = a1[5];
  v39 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v46[5] = v39;
  v45[6] = @"m22";
  LODWORD(v8) = a1[6];
  v38 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v46[6] = v38;
  v45[7] = @"m23";
  LODWORD(v9) = a1[7];
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v46[7] = v37;
  v45[8] = @"m24";
  LODWORD(v10) = a1[8];
  v36 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v46[8] = v36;
  v45[9] = @"m25";
  LODWORD(v11) = a1[9];
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v46[9] = v35;
  v45[10] = @"m31";
  LODWORD(v12) = a1[10];
  v34 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v46[10] = v34;
  v45[11] = @"m32";
  LODWORD(v13) = a1[11];
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v46[11] = v14;
  v45[12] = @"m33";
  LODWORD(v15) = a1[12];
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v46[12] = v16;
  v45[13] = @"m34";
  LODWORD(v17) = a1[13];
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v46[13] = v18;
  v45[14] = @"m35";
  LODWORD(v19) = a1[14];
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v46[14] = v20;
  v45[15] = @"m41";
  LODWORD(v21) = a1[15];
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v46[15] = v22;
  v45[16] = @"m42";
  LODWORD(v23) = a1[16];
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v46[16] = v24;
  v45[17] = @"m43";
  LODWORD(v25) = a1[17];
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v46[17] = v26;
  v45[18] = @"m44";
  LODWORD(v27) = a1[18];
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v46[18] = v28;
  v45[19] = @"m45";
  LODWORD(v29) = a1[19];
  v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  v46[19] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:20];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

CGFloat MTCGColorPerceivedLightness(CGColor *a1)
{
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  Components = CGColorGetComponents(a1);
  if (NumberOfComponents == 4)
  {
    return sqrt(Components[1] * (Components[1] * 0.587) + *Components * 0.299 * *Components + Components[2] * 0.114 * Components[2]);
  }

  result = 0.0;
  if (NumberOfComponents == 2)
  {
    return *Components;
  }

  return result;
}

BOOL MTCanGenerateVisualStylingDescriptionFromRecipeSettings(void *a1)
{
  v1 = [a1 baseMaterialSettings];
  v2 = v1;
  if (v1)
  {
    VisualStylingDescriptionFromConfigurationSettings = _CanGenerateVisualStylingDescriptionFromConfigurationSettings(v1);
  }

  else
  {
    VisualStylingDescriptionFromConfigurationSettings = 0;
  }

  return VisualStylingDescriptionFromConfigurationSettings;
}

BOOL _CanGenerateVisualStylingDescriptionFromConfigurationSettings(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AD98];
  [v1 luminanceAmount];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 mt_isIdentityValueForMaterialSettingsProperty:@"luminanceAmount"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "isAverageColorEnabled")}];
  v6 = [v5 mt_isIdentityValueForMaterialSettingsProperty:@"averageColorEnabled"];

  v7 = [v1 curvesValues];

  v8 = MEMORY[0x1E696AD98];
  [v1 saturation];
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 mt_isIdentityValueForMaterialSettingsProperty:@"saturation"];

  v11 = MEMORY[0x1E696AD98];
  [v1 brightness];
  v12 = [v11 numberWithDouble:?];
  v13 = [v12 mt_isIdentityValueForMaterialSettingsProperty:@"brightness"];

  v14 = [v1 tintColorDescription];

  v15 = MEMORY[0x1E696B098];
  if (v1)
  {
    [v1 colorMatrix];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v16 = v7 != 0;
  v17 = [v15 valueWithBytes:v21 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  v18 = [v17 mt_isIdentityValueForMaterialSettingsProperty:@"colorMatrix"];

  if ((v1 == 0) | (v4 ^ 1) & 1 | (v6 ^ 1 | v16) & 1 | (v14 != 0) | ((v18 & 1) == 0))
  {
    v19 = (v1 == 0) | v4 ^ 1 | v6 ^ 1 | v16;
  }

  else
  {
    v19 = v10 & v13;
  }

  return (v19 & 1) == 0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

float32x4_t _MTCAColorMatrixFloydRound@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v2.i64[0] = 0x4300000043000000;
  v2.i64[1] = 0x4300000043000000;
  v3.i64[0] = 0x3C0000003C000000;
  v3.i64[1] = 0x3C0000003C000000;
  v4 = vmulq_f32(vrndaq_f32(vmulq_f32(a1[1], v2)), v3);
  *a2 = vmulq_f32(vrndaq_f32(vmulq_f32(*a1, v2)), v3);
  a2[1] = v4;
  v5 = vmulq_f32(vrndaq_f32(vmulq_f32(a1[3], v2)), v3);
  a2[2] = vmulq_f32(vrndaq_f32(vmulq_f32(a1[2], v2)), v3);
  a2[3] = v5;
  result = vmulq_f32(vrndaq_f32(vmulq_f32(a1[4], v2)), v3);
  a2[4] = result;
  return result;
}

void MTCAColorMatrixMakeWithVibrantShadowAttributes(float32x4_t *a1@<X8>, float a2@<S0>)
{
  MTFloatIsZero(fmaxf(fminf(a2, 0.99902), -0.99902));
  v3 = *(MEMORY[0x1E6979280] + 48);
  v12 = *(MEMORY[0x1E6979280] + 32);
  v13 = v3;
  v14 = *(MEMORY[0x1E6979280] + 64);
  v4 = *(MEMORY[0x1E6979280] + 16);
  v10 = *MEMORY[0x1E6979280];
  v7 = v12;
  v8 = v3;
  v9 = v14;
  v5 = v10;
  v6 = v4;
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  v13 = v8;
  v11 = v6;
  _MTCAColorMatrixFloydRound(&v5, a1);
}

CGColorSpaceRef __RGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  RGBColorSpace___RGBColorSpace = result;
  return result;
}

void sub_1BF537878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _CanGenerateMaterialDescriptionForFilteringFromVisualStyling(void *a1)
{
  v1 = a1;
  v2 = [v1 filterType];
  if ([v2 isEqualToString:*MEMORY[0x1E6979D78]])
  {
    v3 = [v1 filterProperties];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t MTSupportsDeepColor()
{
  if (MTSupportsDeepColor_onceToken != -1)
  {
    MTSupportsDeepColor_cold_1();
  }

  return MTSupportsDeepColor___supportsDeepColor;
}

uint64_t __MTSupportsDeepColor_block_invoke()
{
  result = MGGetBoolAnswer();
  MTSupportsDeepColor___supportsDeepColor = result;
  return result;
}

double MTEdgeOutsetsForCoreMaterialShadowProperties(double *a1, double a2)
{
  v2 = a1[3];
  v3 = a1[2] * a2;
  if (-(v3 - v2 * a2) >= 1.0)
  {
    v4 = -(v3 - v2 * a2);
  }

  else
  {
    v4 = 1.0;
  }

  v5 = a1[1] * a2;
  return v4;
}

CGImageRef MTShadowImageCreateWithCoreMaterialShadowProperties(uint64_t a1, int a2, double *a3, CGFloat a4, double a5, double a6, double a7)
{
  if (*(a1 + 24) <= 0.0)
  {
    return 0;
  }

  v14 = MEMORY[0x1E69796E8];
  v15 = 1.0;
  if (a2)
  {
    [MEMORY[0x1E6979398] cornerCurveExpansionFactor:{*MEMORY[0x1E69796E8], 1.0}];
  }

  v55 = a5;
  v16 = ceil(v15 * a5 * a4) / a4;
  if (v16 >= a6 * 0.5)
  {
    v17 = a6 * 0.5;
  }

  else
  {
    v17 = v16;
  }

  if (v16 >= a7 * 0.5)
  {
    v18 = a7 * 0.5;
  }

  else
  {
    v18 = v16;
  }

  if (MTFloatEqualToFloat(v17 + v17, a6))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0 / a4;
  }

  v54 = v19;
  if (MTFloatEqualToFloat(v18 + v18, a7))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0 / a4;
  }

  v21 = *(a1 + 24);
  v22 = *(a1 + 16) * a4;
  if (-(v22 - v21 * a4) >= 1.0)
  {
    v23 = -(v22 - v21 * a4);
  }

  else
  {
    v23 = 1.0;
  }

  v24 = *(a1 + 8) * a4;
  if (-(v24 - v21 * a4) >= 1.0)
  {
    v25 = -(v24 - v21 * a4);
  }

  else
  {
    v25 = 1.0;
  }

  v26 = v22 + v21 * a4;
  if (v26 >= 1.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = v24 + v21 * a4;
  if (v28 >= 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  v50 = v17;
  v30 = v54 + v17 * 2.0;
  v31 = v20 + v18 * 2.0;
  v51 = -v25;
  v57.origin.x = v25;
  v57.origin.y = v23;
  v57.size.width = v30;
  v57.size.height = v31;
  v49 = v29;
  v32 = v29 + CGRectGetWidth(v57) + v25;
  v52 = v30;
  v53 = v25;
  v58.origin.x = v25;
  v58.origin.y = v23;
  v58.size.width = v30;
  v58.size.height = v31;
  v33 = v27 + CGRectGetHeight(v58) + v23;
  v34 = (v33 * a4);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v36 = CGBitmapContextCreate(0, (v32 * a4), v34, 8uLL, AlignedBytesPerRow, 0, 7u);
  v37 = v36;
  if (v36)
  {
    v59.size.width = (v32 * a4);
    v59.origin.x = 0.0;
    v59.origin.y = 0.0;
    v59.size.height = v34;
    CGContextClearRect(v36, v59);
    CGContextTranslateCTM(v37, 0.0, v34);
    CGContextScaleCTM(v37, a4, -a4);
    CGContextGetCTM(&v56, v37);
    CGContextSetBaseCTM();
  }

  v38 = objc_alloc_init(MEMORY[0x1E6979398]);
  v60.origin.x = -v25;
  v60.origin.y = -v23;
  v60.size.width = v32;
  v60.size.height = v33;
  Width = CGRectGetWidth(v60);
  v61.origin.x = v51;
  v61.origin.y = -v23;
  v61.size.width = v32;
  v61.size.height = v33;
  [v38 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v61)}];
  v40 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v38 addSublayer:v40];
  [v40 setFrame:{v53, v23, v52, v31}];
  v41 = +[MTColor blackColor];
  [v40 setBackgroundColor:{objc_msgSend(v41, "CGColor")}];

  v42 = MEMORY[0x1E69796E0];
  if (a2)
  {
    v42 = v14;
  }

  v43 = *v42;
  [v40 setCornerCurve:*v42];
  [v40 setCornerRadius:v55];
  LODWORD(v44) = *a1;
  [v40 setShadowOpacity:v44];
  [v40 setShadowOffset:{*(a1 + 8), *(a1 + 16)}];
  [v40 setShadowRadius:*(a1 + 24)];
  [v38 renderInContext:v37];
  v45 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v45 setFrame:{v53, v23, v52, v31}];
  v46 = +[MTColor blackColor];
  [v45 setBackgroundColor:{objc_msgSend(v46, "CGColor")}];

  [v45 setCornerCurve:v43];
  [v45 setCornerRadius:v55];
  CGContextSetBlendMode(v37, kCGBlendModeClear);
  [v40 removeFromSuperlayer];
  [v38 addSublayer:v45];
  [v38 renderInContext:v37];
  Image = CGBitmapContextCreateImage(v37);
  CGContextRelease(v37);
  if (a3)
  {
    *a3 = v18 + v23;
    a3[1] = v50 + v53;
    a3[2] = v18 + v27;
    a3[3] = v50 + v49;
  }

  return Image;
}

uint64_t MTDefaultLuminanceColorMap()
{
  if (MTDefaultLuminanceColorMap_onceToken != -1)
  {
    MTDefaultLuminanceColorMap_cold_1();
  }

  return MTDefaultLuminanceColorMap___defaultLuminanceColorMap;
}

CGImageRef __MTDefaultLuminanceColorMap_block_invoke()
{
  result = MTCGImageCreateWithName(@"luminanceColorMap", 0, 0.0);
  MTDefaultLuminanceColorMap___defaultLuminanceColorMap = result;
  return result;
}

IOSurfaceRef MTIOSurfaceCreate(char a1, double a2, double a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = MTSupportsDeepColor();
  v7 = a2;
  if (v6)
  {
    if ((a1 & 1) == 0)
    {
      v24 = llroundf(v7);
      v25 = a3;
      v26 = llroundf(v25);
      v27 = *MEMORY[0x1E696CE58];
      v28 = MEMORY[0x1BFB5A970](*MEMORY[0x1E696CE58], 4 * v24);
      v29 = v28 * v26;
      v13 = _makeIOSurfacePlaneProperties(v24, v26, v28, 0, v28 * v26);
      v30 = MEMORY[0x1BFB5A970](v27, v24);
      v31 = v30 * v26;
      v14 = _makeIOSurfacePlaneProperties(v24, v26, v30, v29, v30 * v26);
      v42 = *MEMORY[0x1E696D130];
      v32 = [MEMORY[0x1E696AD98] numberWithLong:v24];
      v48 = v32;
      v43 = *MEMORY[0x1E696CF58];
      v33 = [MEMORY[0x1E696AD98] numberWithLong:v26];
      v34 = *MEMORY[0x1E696CFC0];
      v49 = v33;
      v50 = &unk_1F3E01800;
      v35 = *MEMORY[0x1E696D0A8];
      v44 = v34;
      v45 = v35;
      v41[0] = v13;
      v41[1] = v14;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      v51 = v36;
      v46 = *MEMORY[0x1E696CE30];
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v31 + v29];
      v52 = v37;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v42 count:5];

      goto LABEL_7;
    }

    v8 = llroundf(v7);
    v9 = a3;
    v10 = llroundf(v9);
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v12 = (AlignedBytesPerRow * v10);
    v42 = *MEMORY[0x1E696D130];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    v48 = v13;
    v43 = *MEMORY[0x1E696CF58];
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    v49 = v14;
    v50 = &unk_1F3E017D0;
    v15 = *MEMORY[0x1E696CE50];
    v44 = *MEMORY[0x1E696CFC0];
    v45 = v15;
    v16 = &unk_1F3E017E8;
  }

  else
  {
    v17 = llroundf(v7);
    v18 = a3;
    v19 = llroundf(v18);
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v12 = (AlignedBytesPerRow * v19);
    v42 = *MEMORY[0x1E696D130];
    v13 = [MEMORY[0x1E696AD98] numberWithLong:v17];
    v48 = v13;
    v43 = *MEMORY[0x1E696CF58];
    v14 = [MEMORY[0x1E696AD98] numberWithLong:v19];
    v49 = v14;
    v50 = &unk_1F3E01818;
    v20 = *MEMORY[0x1E696CE50];
    v44 = *MEMORY[0x1E696CFC0];
    v45 = v20;
    v16 = &unk_1F3E01830;
  }

  v51 = v16;
  v46 = *MEMORY[0x1E696CE58];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:AlignedBytesPerRow];
  v52 = v21;
  v47 = *MEMORY[0x1E696CE30];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v53 = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v42 count:6];

LABEL_7:
  v38 = IOSurfaceCreate(v23);

  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

id _makeIOSurfacePlaneProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = *MEMORY[0x1E696D0C8];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v18[0] = v9;
  v17[1] = *MEMORY[0x1E696D090];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  v18[1] = v10;
  v17[2] = *MEMORY[0x1E696CFE8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  v18[2] = v11;
  v17[3] = *MEMORY[0x1E696D0B0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
  v18[3] = v12;
  v17[4] = *MEMORY[0x1E696D0B8];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a5];
  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id MTDiscoveredMaterialRecipes()
{
  if (MTDiscoveredMaterialRecipes_onceToken != -1)
  {
    MTDiscoveredMaterialRecipes_cold_1();
  }

  v1 = MTDiscoveredMaterialRecipes___materialRecipes;

  return v1;
}

void __MTDiscoveredMaterialRecipes_block_invoke()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  if (_DiscoveredMaterialRecipeURLs_onceToken != -1)
  {
    __MTDiscoveredMaterialRecipes_block_invoke_cold_1();
  }

  obj = _DiscoveredMaterialRecipeURLs___discoveredMaterialRecipeURLs;
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v16 = *v24;
    do
    {
      v1 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v2 = [*(*(&v23 + 1) + 8 * v1) lastPathComponent];
        v3 = [v2 stringByDeletingPathExtension];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        if (_LoadCoreMaterialRecipeNames_onceToken != -1)
        {
          __MTDiscoveredMaterialRecipes_block_invoke_cold_2();
        }

        v4 = __coreMaterialRecipeNames;
        v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (!v5)
        {

LABEL_22:
          [v0 addObject:v3];
          goto LABEL_23;
        }

        v6 = v5;
        v18 = v1;
        v7 = 0;
        v8 = *v20;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v19 + 1) + 8 * i);
            v11 = _RecipeNameForCoreMaterialRecipe(v10);
            v12 = [v3 isEqualToString:v11];

            if (v12)
            {
              [v0 addObject:v10];
              v7 = 1;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v6);

        v1 = v18;
        if ((v7 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_23:

        ++v1;
      }

      while (v1 != v17);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  v13 = MTDiscoveredMaterialRecipes___materialRecipes;
  MTDiscoveredMaterialRecipes___materialRecipes = v0;

  v14 = *MEMORY[0x1E69E9840];
}

id _MTCoreMaterialRecipeForVisualStyleFromStyleWithNameFromBundleWithProvidedStyles(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (v7 && v8)
  {
    v12 = MTSharedVisualStyleSetForStyleNameFromBundle(v8, v9);
    v13 = v7;
    v14 = v12;
    v15 = v10;
    if (v14)
    {
      v16 = [v14 visualStyleSetName];
      v17 = [MTVisualStyleSet recipeNameForRecipeFromStyle:v13 fromStyleSetWithName:v16];

      v18 = _RecipeNamesToSharedInstances();
      v19 = [v18 objectForKey:v17];
      if (!v19)
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = [v14 _newMaterialSettingsForStyle:v13 withProvidedStyles:v15];
          if (v19)
          {
            obj = v18;
            objc_sync_enter(obj);
            [obj setObject:v19 forKey:v17];
            objc_sync_exit(obj);
          }
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v11 = [v19 recipeName];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

id MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = _SharedMaterialSettingsForRecipeWithNameFromBundle(a1, v7);
  v11 = [v10 styleNameForCategory:v9];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle_block_invoke;
  v17[3] = &unk_1E80BDFA8;
  v18 = v10;
  v12 = v10;
  v13 = MEMORY[0x1BFB5AC50](v17);
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  (v13)[2](v13, @"stroke", v14);
  (v13)[2](v13, @"fill", v14);
  (v13)[2](v13, @"overlay", v14);
  v15 = _MTCoreMaterialRecipeForVisualStyleFromStyleWithNameFromBundleWithProvidedStyles(v8, v11, v7, v14);

  return v15;
}

void __MTCoreMaterialRecipeForVisualStyleFromRecipeFromBundle_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) styleNameForCategory:v7];
  if (v6)
  {
    [v5 setObject:v6 forKey:v7];
  }
}

id MTSharedVisualStyleSetGeneratedFromRecipe(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = _RecipeNameForCoreMaterialRecipe(v1);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
    }

    v6 = v5;

    v7 = [MTRecipeMaterialSettings styleSetNameForStyleSetFromRecipeWithName:v6];
    v8 = _StylesToSharedInstances();
    v9 = [v8 objectForKey:v7];
    if (!v9)
    {
      v10 = MTMaterialSettingsForRecipeFromBundle(v6, 0);
      if (objc_opt_respondsToSelector())
      {
        v9 = [v10 _newVisualStyleSet];
        if (v9)
        {
          v11 = v8;
          objc_sync_enter(v11);
          [v11 setObject:v9 forKey:v7];
          objc_sync_exit(v11);
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  return v9;
}

id MTAllVisualStyleCategories()
{
  if (MTAllVisualStyleCategories_onceToken != -1)
  {
    MTAllVisualStyleCategories_cold_1();
  }

  v1 = MTAllVisualStyleCategories___categories;

  return v1;
}

void __MTAllVisualStyleCategories_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"stroke";
  v3[1] = @"fill";
  v3[2] = @"overlay";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = MTAllVisualStyleCategories___categories;
  MTAllVisualStyleCategories___categories = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id __MTTintingFilteringSettingsCreateDictionaryRepresentation_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"inputColorMap";
  v4[0] = MTDefaultLuminanceColorMap();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id MTStylingProvidingSolidColorLayerStyleDictionaryForPlusLAndWhiteTint(CGColor *a1, double a2, double a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v19 = 0.0;
  v20 = 0.0;
  v18 = 0.0;
  _ColorGetComponents(a1, &v20, &v19, &v18);
  v5 = fmin(a2 + a3 * v20, 1.0);
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = fmin(a2 + a3 * v19, 1.0);
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = fmin(a2 + a3 * v18, 1.0);
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v25 = @"tinting";
  v23 = @"tintColor";
  v22[0] = &unk_1F3E01848;
  v21[0] = @"alpha";
  v21[1] = @"red";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v22[1] = v10;
  v21[2] = @"green";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v22[2] = v11;
  v21[3] = @"blue";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v22[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id MTStylingProvidingSolidColorLayerHighlightStyleDictionary(CGColor *a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v1 = MTCGColorPerceivedLightness(a1);
  v15[0] = @"tinting";
  v15[1] = @"filtering";
  v16[0] = &unk_1F3E01948;
  v14[0] = *MEMORY[0x1E6979D78];
  v13[0] = @"filterType";
  v13[1] = @"filterProperties";
  v11 = @"inputColorMatrix";
  v2 = qword_1BF53FB60[v1 != 0.0];
  CAColorMatrixMakeBrightness();
  v4 = MTCAColorMatrixCreateDictionaryRepresentation(v10, v3);
  v12 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(CGColor *a1, double a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v19 = 0.0;
  v20 = 0.0;
  v18 = 0.0;
  _ColorGetComponents(a1, &v20, &v19, &v18);
  v3 = 1.0 - a2;
  v4 = fmin(1.0 - a2 + 1.0 - v20, 1.0);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = 1.0 - v4;
  v6 = fmin(v3 + 1.0 - v19, 1.0);
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = 1.0 - v6;
  v8 = fmin(v3 + 1.0 - v18, 1.0);
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = 1.0 - v8;
  v25 = @"tinting";
  v23 = @"tintColor";
  v22[0] = &unk_1F3E01848;
  v21[0] = @"alpha";
  v21[1] = @"red";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v22[1] = v10;
  v21[2] = @"green";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v22[2] = v11;
  v21[3] = @"blue";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v22[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

CGFloat _ColorGetComponents(CGColor *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    NumberOfComponents = CGColorGetNumberOfComponents(a1);
    Components = CGColorGetComponents(a1);
    if (NumberOfComponents == 4)
    {
      *a2 = *Components;
      *a3 = *(Components + 1);
      Components += 2;
    }

    else
    {
      if (NumberOfComponents != 2)
      {
        return result;
      }

      v11 = *Components;
      *a2 = *Components;
      *a3 = v11;
    }

    result = *Components;
    *a4 = *Components;
  }

  return result;
}

void _MTSetCoreMaterialPlatformConfiguration(void *a1)
{
  v2 = a1;
  if (__platformConfiguration != v2)
  {
    v3 = v2;
    objc_storeStrong(&__platformConfiguration, a1);
    v2 = v3;
  }
}

double MTPreferredDisplayModeScale()
{
  if (MTPreferredDisplayModeScale___once != -1)
  {
    MTPreferredDisplayModeScale_cold_1();
  }

  return *&MTPreferredDisplayModeScale___cachedScale;
}

void __MTPreferredDisplayModeScale_block_invoke()
{
  v1 = [MEMORY[0x1E6979328] mainDisplay];
  v0 = [v1 preferredMode];
  *&MTPreferredDisplayModeScale___cachedScale = [v0 preferredScale];
}

void _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1BF527000, v0, v1, "Loaded base material recipe plist at URL: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1BF527000, v0, v1, "Loaded recipe material settings: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _SharedMaterialSettingsForRecipeWithNameFromBundle_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_1BF527000, v0, v1, "Failed to load material recipe plist at URL (%{public}@): %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void MTSharedVisualStyleSetForStyleNameFromBundle_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1BF527000, v0, v1, "Loaded base style set plist at URL: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MTSharedVisualStyleSetForStyleNameFromBundle_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1BF527000, v0, v1, "Loaded style set settings: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void MTSharedVisualStyleSetForStyleNameFromBundle_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1(&dword_1BF527000, v0, v1, "Failed to load stytle set plist at URL (%{public}@): %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void MTCompareBlurInputQualities_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult MTCompareBlurInputQualities(NSString *__strong, NSString *__strong)"}];
  [v1 handleFailureInFunction:v0 file:@"MTUtilities.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"MTIsValidBlurInputQuality(inputQuality1) && MTIsValidBlurInputQuality(inputQuality2)"}];
}