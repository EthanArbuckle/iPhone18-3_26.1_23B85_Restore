@interface NSMutableDictionary(MTMaterialDescriptionInternal)
- (void)_processAdditionalInfo:()MTMaterialDescriptionInternal forFilterInFiltersArray:;
- (void)setAverageColorEnabled:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:;
- (void)setBlurRadius:()MTMaterialDescriptionInternal inputMaskImage:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setBrightness:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setColorMatrix:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setCurvesInputValues:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setLuminanceAmount:()MTMaterialDescriptionInternal values:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setSaturation:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)setTintColor:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:;
- (void)setValue:()MTMaterialDescriptionInternal forProperty:ofFilter:isCompositingFilter:;
- (void)setZoom:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:;
- (void)sortFiltersWithOrder:()MTMaterialDescriptionInternal;
@end

@implementation NSMutableDictionary(MTMaterialDescriptionInternal)

- (void)setValue:()MTMaterialDescriptionInternal forProperty:ofFilter:isCompositingFilter:
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    if (a6)
    {
      v13 = [self objectForKey:@"compositingFilter"];
      v14 = 0;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = [self objectForKey:@"filters"];
      if (!v15)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [self setObject:v15 forKey:@"filters"];
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = v15;
      v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v24 = a6;
        selfCopy = self;
        v26 = v11;
        v18 = *v28;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            v21 = [v20 objectForKey:@"type"];
            v22 = [v12 isEqualToString:v21];

            if (v22)
            {
              v13 = v20;
              goto LABEL_17;
            }
          }

          v17 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v13 = 0;
LABEL_17:
        self = selfCopy;
        v11 = v26;
        a6 = v24;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        goto LABEL_22;
      }
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:v12 forKey:@"type"];
    if (!a6)
    {
      [v14 addObject:v13];
      if (!v10)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    [self setObject:v13 forKey:@"compositingFilter"];
LABEL_22:
    if (!v10)
    {
LABEL_24:

      goto LABEL_25;
    }

LABEL_23:
    [v13 setObject:v10 forKey:v11];
    goto LABEL_24;
  }

LABEL_25:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_processAdditionalInfo:()MTMaterialDescriptionInternal forFilterInFiltersArray:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = [v6 objectForKey:v13];
            [self setValue:v14 forProperty:v13 ofFilter:v8 isCompositingFilter:0];
          }

          v10 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setTintColor:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:
{
  v7 = a5;
  if (a3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    [a3 sourceOverColorMatrix];
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v16;
    v11[0] = v12;
    v11[1] = v13;
    v8 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    v9 = *MEMORY[0x1E6979880];
    [self setValue:v8 forProperty:@"inputColorMatrix" ofFilterInFiltersArray:*MEMORY[0x1E6979880]];

    if (v7)
    {
      v10 = v7[2](v7);
      [self _processAdditionalInfo:v10 forFilterInFiltersArray:v9];
    }

    else
    {
      [self _processAdditionalInfo:0 forFilterInFiltersArray:v9];
    }
  }
}

- (void)setLuminanceAmount:()MTMaterialDescriptionInternal values:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v17 = a4;
  v11 = a7;
  v12 = *MEMORY[0x1E6979C70];
  if (!a5 || MTIdentityValueForFilter(*MEMORY[0x1E6979C70]) != a2)
  {
    v13 = *MEMORY[0x1E6979C68];
    if (!v17)
    {
      v13 = v12;
    }

    v14 = v13;
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [self setValue:v15 forProperty:@"inputAmount" ofFilterInFiltersArray:v14];

    if ([v17 count] == 4)
    {
      [self setValue:v17 forProperty:@"inputValues" ofFilterInFiltersArray:v14];
    }

    if (v11)
    {
      v16 = v11[2](v11);
      [self _processAdditionalInfo:v16 forFilterInFiltersArray:v14];
    }

    else
    {
      [self _processAdditionalInfo:0 forFilterInFiltersArray:v14];
    }
  }
}

- (void)setBlurRadius:()MTMaterialDescriptionInternal inputMaskImage:ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v23 = a7;
  v12 = *MEMORY[0x1E6979928];
  if (!a5 || MTIdentityValueForFilter(*MEMORY[0x1E6979928]) != a2)
  {
    v13 = a2 > 29.5;
    if (a2 >= 35.0)
    {
      v13 = 0;
    }

    if ((v13 & a6) != 0)
    {
      a2 = 29.5;
    }

    v14 = *MEMORY[0x1E6979D70];
    if (a4)
    {
      v15 = *MEMORY[0x1E6979D70];
    }

    else
    {
      v15 = v12;
    }

    v16 = v15;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [self setValue:v17 forProperty:@"inputRadius" ofFilterInFiltersArray:v16];

    if (a4)
    {
      [self setValue:a4 forProperty:@"inputMaskImage" ofFilterInFiltersArray:v14];
    }

    if (v23)
    {
      v18 = v23[2]();
      v19 = v18;
      if (a6)
      {
        if (v18)
        {
          v20 = [v18 mutableCopy];

          v19 = v20;
LABEL_18:
          v21 = _MTGetCoreMaterialPlatformConfiguration();
          if (objc_opt_respondsToSelector())
          {
            blurEdgesOptimization = [v21 blurEdgesOptimization];
            [v19 setObject:MEMORY[0x1E695E118] forKey:blurEdgesOptimization];
          }

          if ((objc_opt_respondsToSelector() & 1) == 0 || [v21 isDitherOptimizationSupported])
          {
            [v19 setObject:MEMORY[0x1E695E118] forKey:@"inputDither"];
          }

          goto LABEL_25;
        }

LABEL_17:
        v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
        goto LABEL_18;
      }
    }

    else
    {
      if (a6)
      {
        goto LABEL_17;
      }

      v19 = 0;
    }

LABEL_25:
    [self _processAdditionalInfo:v19 forFilterInFiltersArray:v16];
  }
}

- (void)setAverageColorEnabled:()MTMaterialDescriptionInternal includingOptimizations:withAdditionalInfoPromise:
{
  v8 = a5;
  if (a3)
  {
    v11 = v8;
    v9 = *MEMORY[0x1E6979810];
    [self setValue:0 forProperty:0 ofFilterInFiltersArray:*MEMORY[0x1E6979810]];
    if (a4)
    {
      [self setObject:&unk_1F3E01870 forKey:@"scale"];
    }

    if (v11)
    {
      v10 = v11[2](v11);
      [self _processAdditionalInfo:v10 forFilterInFiltersArray:v9];
    }

    else
    {
      [self _processAdditionalInfo:0 forFilterInFiltersArray:v9];
    }

    v8 = v11;
  }
}

- (void)setSaturation:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v12 = a6;
  v9 = *MEMORY[0x1E6979890];
  if (!a4 || MTIdentityValueForFilter(*MEMORY[0x1E6979890]) != a2)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [self setValue:v10 forProperty:@"inputAmount" ofFilterInFiltersArray:v9];

    if (v12)
    {
      v11 = v12[2]();
      [self _processAdditionalInfo:v11 forFilterInFiltersArray:v9];
    }

    else
    {
      [self _processAdditionalInfo:0 forFilterInFiltersArray:v9];
    }
  }
}

- (void)setBrightness:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v12 = a6;
  v9 = *MEMORY[0x1E6979848];
  if (!a4 || MTIdentityValueForFilter(*MEMORY[0x1E6979848]) != a2)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [self setValue:v10 forProperty:@"inputAmount" ofFilterInFiltersArray:v9];

    if (v12)
    {
      v11 = v12[2]();
      [self _processAdditionalInfo:v11 forFilterInFiltersArray:v9];
    }

    else
    {
      [self _processAdditionalInfo:0 forFilterInFiltersArray:v9];
    }
  }
}

- (void)setColorMatrix:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v9 = a6;
  if (!a4 || (v10 = a3[3], v18[2] = a3[2], v18[3] = v10, v18[4] = a3[4], v11 = a3[1], v18[0] = *a3, v18[1] = v11, !MTCAColorMatrixIsIdentity(v18)))
  {
    v12 = a3[3];
    v17[2] = a3[2];
    v17[3] = v12;
    v17[4] = a3[4];
    v13 = a3[1];
    v17[0] = *a3;
    v17[1] = v13;
    v14 = [MEMORY[0x1E696B098] valueWithBytes:v17 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    v15 = *MEMORY[0x1E6979880];
    [self setValue:v14 forProperty:@"inputColorMatrix" ofFilterInFiltersArray:*MEMORY[0x1E6979880]];

    if (v9)
    {
      v16 = v9[2](v9);
      [self _processAdditionalInfo:v16 forFilterInFiltersArray:v15];
    }

    else
    {
      [self _processAdditionalInfo:0 forFilterInFiltersArray:v15];
    }
  }
}

- (void)setZoom:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  if (a2 != 0.0 || (a4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [self setObject:v5 forKey:@"zoom"];
  }
}

- (void)setCurvesInputValues:()MTMaterialDescriptionInternal ignoringIdentity:includingOptimizations:withAdditionalInfoPromise:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  if (!a4 || [v9 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      v15 = *MEMORY[0x1E69798B8];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v11 objectForKeyedSubscript:{v17, v21}];
          [self setValue:v18 forProperty:v17 ofFilterInFiltersArray:v15];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    if (v10)
    {
      v19 = v10[2](v10);
      [self _processAdditionalInfo:v19 forFilterInFiltersArray:*MEMORY[0x1E69798B8]];
    }

    else
    {
      [self _processAdditionalInfo:0 forFilterInFiltersArray:*MEMORY[0x1E69798B8]];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)sortFiltersWithOrder:()MTMaterialDescriptionInternal
{
  v4 = a3;
  v5 = [self objectForKey:@"filters"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__NSMutableDictionary_MTMaterialDescriptionInternal__sortFiltersWithOrder___block_invoke;
  v7[3] = &unk_1E80BE050;
  v8 = v4;
  v6 = v4;
  [v5 sortUsingComparator:v7];
}

@end