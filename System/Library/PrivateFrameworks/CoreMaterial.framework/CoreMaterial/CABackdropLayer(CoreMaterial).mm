@interface CABackdropLayer(CoreMaterial)
+ (id)mt_orderedFilterTypes;
+ (id)mt_orderedFilterTypesBlurAtEnd;
- (double)mt_colorMatrixDrivenInoperativeOpacity;
- (double)mt_colorMatrixDrivenOpacity;
- (uint64_t)mt_setColorMatrixDrivenInoperativeOpacity:()CoreMaterial removingIfIdentity:;
- (uint64_t)mt_setColorMatrixDrivenOpacity:()CoreMaterial removingIfIdentity:;
- (void)_mt_applyFilterDescription:()CoreMaterial remainingExistingFilters:filterOrder:removingIfIdentity:;
- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithFilterOrder:;
- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithName:andFilterOrder:;
- (void)_mt_removeFilterOfType:()CoreMaterial ifNecessaryWithName:;
- (void)_mt_setColorMatrix:()CoreMaterial withName:filterOrder:removingIfIdentity:;
- (void)_mt_setValue:()CoreMaterial forFilterOfType:valueKey:filterOrder:removingIfIdentity:;
- (void)mt_applyMaterialDescription:()CoreMaterial removingIfIdentity:;
@end

@implementation CABackdropLayer(CoreMaterial)

+ (id)mt_orderedFilterTypes
{
  if (mt_orderedFilterTypes_onceToken != -1)
  {
    +[CABackdropLayer(CoreMaterial) mt_orderedFilterTypes];
  }

  v1 = mt_orderedFilterTypes___sortedFilterTypes;

  return v1;
}

+ (id)mt_orderedFilterTypesBlurAtEnd
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CABackdropLayer_CoreMaterial__mt_orderedFilterTypesBlurAtEnd__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mt_orderedFilterTypesBlurAtEnd_onceToken != -1)
  {
    dispatch_once(&mt_orderedFilterTypesBlurAtEnd_onceToken, block);
  }

  v1 = mt_orderedFilterTypesBlurAtEnd___sortedFilterTypesBlurAtEnd;

  return v1;
}

- (void)mt_applyMaterialDescription:()CoreMaterial removingIfIdentity:
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MTLogMaterials;
  if (os_log_type_enabled(MTLogMaterials, OS_LOG_TYPE_DEBUG))
  {
    v35 = @"not ";
    *buf = 138543874;
    selfCopy = self;
    if (a4)
    {
      v35 = &stru_1F3DFC648;
    }

    v61 = 2112;
    v62 = v35;
    v63 = 2114;
    v64 = v6;
    _os_log_debug_impl(&dword_1BF527000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: applying backdrop settings (%@removing if identity): %{public}@", buf, 0x20u);
  }

  filters = [self filters];
  v9 = [filters mutableCopy];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    v36 = @"type";
    v37 = *v53;
    v40 = a4;
    v38 = v10;
    v39 = v9;
    do
    {
      v14 = 0;
      v41 = v12;
      do
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v52 + 1) + 8 * v14);
        if ([v15 isEqualToString:{@"filters", v36}])
        {
          v16 = [v10 objectForKey:@"filters"];
          v17 = [v16 valueForKey:v36];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v18 = v16;
          v19 = [v18 countByEnumeratingWithState:&v48 objects:v57 count:16];
          obj = v18;
          if (v19)
          {
            v20 = v19;
            v21 = *v49;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v49 != v21)
                {
                  objc_enumerationMutation(obj);
                }

                [self _mt_applyFilterDescription:*(*(&v48 + 1) + 8 * i) remainingExistingFilters:v9 filterOrder:v17 removingIfIdentity:a4];
              }

              v18 = obj;
              v20 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v20);
          }

          v42 = v14;

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v23 = v9;
          v24 = [v23 countByEnumeratingWithState:&v44 objects:v56 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v45;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v45 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v44 + 1) + 8 * j);
                name = [v28 name];
                if (([name isEqualToString:@"opacityColorMatrix"] & 1) == 0)
                {
                  name2 = [v28 name];
                  v31 = [name2 isEqualToString:@"inoperativeColorMatrix"];

                  if (v31)
                  {
                    continue;
                  }

                  name = [v28 type];
                  name3 = [v28 name];
                  [self _mt_removeFilterOfType:name ifNecessaryWithName:name3];
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v44 objects:v56 count:16];
            }

            while (v25);
          }

          a4 = v40;
          v10 = v38;
          v9 = v39;
          v13 = v37;
          v12 = v41;
          v14 = v42;
          v33 = obj;
        }

        else
        {
          v33 = [v10 objectForKey:v15];
          [self setValue:v33 forKey:v15];
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v12);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (double)mt_colorMatrixDrivenOpacity
{
  mt_keyPathForColorMatrixDrivenOpacity = [objc_opt_class() mt_keyPathForColorMatrixDrivenOpacity];
  v3 = [self valueForKeyPath:mt_keyPathForColorMatrixDrivenOpacity];

  if (v3)
  {
    [v3 CAColorMatrixValue];
    v4 = v6;
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (uint64_t)mt_setColorMatrixDrivenOpacity:()CoreMaterial removingIfIdentity:
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = objc_opt_class();
  if (v7)
  {
    [v7 mt_colorMatrixForOpacity:a2];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  [self _mt_removeFilterOfType:*MEMORY[0x1E6979880] ifNecessaryWithName:@"opacityColorMatrix"];
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  v9[0] = v10;
  v9[1] = v11;
  return [self _mt_setColorMatrix:v9 withName:@"opacityColorMatrix" filterOrder:0 removingIfIdentity:a4];
}

- (double)mt_colorMatrixDrivenInoperativeOpacity
{
  mt_keyPathForColorMatrixDrivenInoperativeOpacity = [objc_opt_class() mt_keyPathForColorMatrixDrivenInoperativeOpacity];
  v3 = [self valueForKeyPath:mt_keyPathForColorMatrixDrivenInoperativeOpacity];

  if (v3)
  {
    [v3 CAColorMatrixValue];
    v4 = v6;
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (uint64_t)mt_setColorMatrixDrivenInoperativeOpacity:()CoreMaterial removingIfIdentity:
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = objc_opt_class();
  if (v7)
  {
    [v7 mt_colorMatrixForOpacity:a2];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  [self _mt_removeFilterOfType:*MEMORY[0x1E6979880] ifNecessaryWithName:@"inoperativeColorMatrix"];
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  v9[0] = v10;
  v9[1] = v11;
  return [self _mt_setColorMatrix:v9 withName:@"inoperativeColorMatrix" filterOrder:0 removingIfIdentity:a4];
}

- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithName:andFilterOrder:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = MTFilterKeyPathForFilter(v11);
  v13 = [self valueForKeyPath:v12];
  if (!v13)
  {
    filters = [self filters];
    v15 = [filters mutableCopy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v18 = v17;

    v19 = [MEMORY[0x1E6979378] filterWithType:v8];
    v13 = v19;
    if (v9)
    {
      [v19 setName:v9];
    }

    [v18 addObject:v13];
    v20 = [v18 count];
    if (v10 && v20 >= 2)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __94__CABackdropLayer_CoreMaterial___mt_configureFilterOfType_ifNecessaryWithName_andFilterOrder___block_invoke;
      v21[3] = &unk_1E80BDC28;
      v22 = v10;
      [v18 sortUsingComparator:v21];
    }

    [self setFilters:v18];
  }
}

- (void)_mt_configureFilterOfType:()CoreMaterial ifNecessaryWithFilterOrder:
{
  v9 = a3;
  v6 = a4;
  v7 = MTFilterKeyPathForFilter(v9);
  v8 = [self valueForKeyPath:v7];

  if (!v8)
  {
    [self _mt_configureFilterOfType:v9 ifNecessaryWithName:0 andFilterOrder:v6];
  }
}

- (void)_mt_removeFilterOfType:()CoreMaterial ifNecessaryWithName:
{
  v12 = a3;
  v6 = a4;
  filters = [self filters];
  v8 = [filters mutableCopy];

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v12;
  }

  v10 = MTFilterKeyPathForFilter(v9);
  v11 = [self valueForKeyPath:v10];
  [v8 removeObject:v11];

  [self setFilters:v8];
}

- (void)_mt_applyFilterDescription:()CoreMaterial remainingExistingFilters:filterOrder:removingIfIdentity:
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v38 = a5;
  allKeys = [v9 allKeys];
  v12 = [allKeys mutableCopy];

  v13 = v9;
  v14 = [v9 objectForKey:@"type"];
  v15 = MTFilterKeyPathForFilter(v14);
  selfCopy = self;
  v17 = [self valueForKeyPath:v15];
  [v10 removeObject:v17];

  [v12 removeObject:@"type"];
  v37 = v10;
  if ([v14 isEqualToString:*MEMORY[0x1E69798B8]])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
    v19 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20 = MTCAFilterCurvesInputValuesKeys();
    v21 = [v19 initWithArray:v20];
    v22 = [v18 intersectsSet:v21];

    v23 = a6;
    if (!a6 || v22)
    {
      [selfCopy _mt_configureFilterOfType:v14 ifNecessaryWithFilterOrder:v38];
    }

    else
    {
      [selfCopy _mt_removeFilterOfTypeIfNecessary:v14];
    }
  }

  else
  {
    v24 = _IdentityPropertyForFilterType(v14);
    [v12 removeObject:v24];
    if (v24)
    {
      v25 = [v9 objectForKey:v24];
      selfCopy2 = self;
      v23 = a6;
      [selfCopy2 _mt_setValue:v25 forFilterOfType:v14 valueKey:v24 filterOrder:v38 removingIfIdentity:a6];
    }

    else
    {
      selfCopy3 = self;
      v23 = a6;
      [selfCopy3 _mt_setValue:0 forFilterOfType:v14 valueKey:0 filterOrder:v38 removingIfIdentity:a6];
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = v12;
  v29 = [v28 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v40;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v39 + 1) + 8 * i);
        v34 = [v13 objectForKey:v33];
        [selfCopy _mt_setValue:v34 forFilterOfType:v14 valueKey:v33 filterOrder:v38 removingIfIdentity:v23];
      }

      v30 = [v28 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v30);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_mt_setValue:()CoreMaterial forFilterOfType:valueKey:filterOrder:removingIfIdentity:
{
  v24 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  IsIdentityProperty = _IsIdentityProperty(v12, v13);
  if (v24)
  {
    if ((a7 & IsIdentityProperty) != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = [v12 isEqualToString:*MEMORY[0x1E6979810]];
    if ((v16 & a7 & IsIdentityProperty & 1) == 0)
    {
      if (!v16)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  if (_IsValueIdentity(v24, v12, v13))
  {
LABEL_6:
    [self _mt_removeFilterOfTypeIfNecessary:v12];
    goto LABEL_18;
  }

LABEL_8:
  if (IsIdentityProperty)
  {
    [self _mt_configureFilterOfType:v12 ifNecessaryWithFilterOrder:v14];
  }

  v17 = MTFilterKeyPathForFilter(v12);
  v18 = [v17 stringByAppendingFormat:@".%@", v13];
  v19 = [self valueForKeyPath:v17];
  if (v19)
  {
    v20 = v19;
    v21 = [self valueForKeyPath:v18];
    v22 = v24;
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v23 = [v21 isEqual:v22];
    }

    else
    {
      v23 = v21 == v22;
    }

    if ((v23 & 1) == 0)
    {
      [self setValue:v22 forKeyPath:v18];
    }
  }

LABEL_18:
}

- (void)_mt_setColorMatrix:()CoreMaterial withName:filterOrder:removingIfIdentity:
{
  v10 = a4;
  v11 = a5;
  v12 = a3[3];
  v19[2] = a3[2];
  v19[3] = v12;
  v19[4] = a3[4];
  v13 = a3[1];
  v19[0] = *a3;
  v19[1] = v13;
  v14 = [MEMORY[0x1E696B098] valueWithBytes:v19 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
  v15 = v14;
  v16 = *MEMORY[0x1E6979880];
  if (a6 && _IsValueIdentity(v14, *MEMORY[0x1E6979880], @"inputColorMatrix"))
  {
    [self _mt_removeFilterOfType:v16 ifNecessaryWithName:v10];
  }

  else
  {
    [self _mt_configureFilterOfType:v16 ifNecessaryWithName:v10 andFilterOrder:v11];
    v17 = MTFilterKeyPathForFilter(v10);
    v18 = [v17 stringByAppendingFormat:@".%@", @"inputColorMatrix"];
    [self setValue:v15 forKeyPath:v18];
  }
}

@end