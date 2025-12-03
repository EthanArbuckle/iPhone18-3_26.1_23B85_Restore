@interface MTVisualStyleSet
+ (id)recipeNameForRecipeFromStyle:(id)style fromStyleSetWithName:(id)name;
- (MTVisualStyleSet)initWithName:(id)name visualStyleSetDescription:(id)description andDescendantDescriptions:(id)descriptions;
- (NSString)description;
- (id)_materialDescriptionForStyle:(id)style withProvidedStyles:(id)styles;
- (id)_newMaterialSettingsForStyle:(id)style withProvidedStyles:(id)styles;
- (id)visualStylingForStyle:(id)style;
@end

@implementation MTVisualStyleSet

+ (id)recipeNameForRecipeFromStyle:(id)style fromStyleSetWithName:(id)name
{
  styleCopy = style;
  nameCopy = name;
  v9 = nameCopy;
  if (styleCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MTVisualStyleSet recipeNameForRecipeFromStyle:a2 fromStyleSetWithName:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MTVisualStyleSet recipeNameForRecipeFromStyle:a2 fromStyleSetWithName:self];
LABEL_3:
  styleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.generatedRecipe", v9, styleCopy];

  return styleCopy;
}

- (MTVisualStyleSet)initWithName:(id)name visualStyleSetDescription:(id)description andDescendantDescriptions:(id)descriptions
{
  v85 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  v79.receiver = self;
  v79.super_class = MTVisualStyleSet;
  v11 = [(MTVisualStyleSet *)&v79 init];
  if (v11)
  {
    v55 = nameCopy;
    v12 = [nameCopy copy];
    visualStyleSetName = v11->_visualStyleSetName;
    v11->_visualStyleSetName = v12;

    v14 = [descriptionCopy objectForKey:@"visualStyleSetVersion"];
    v11->_visualStyleSetVersion = [v14 integerValue];

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    visualStylesToStyleNames = v11->_visualStylesToStyleNames;
    v11->_visualStylesToStyleNames = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    styleNamesToVisualStylings = v11->_styleNamesToVisualStylings;
    v11->_styleNamesToVisualStylings = v17;

    v61 = descriptionCopy;
    v19 = [descriptionCopy objectForKey:@"styles"];
    v20 = objc_alloc(MEMORY[0x1E695DFA8]);
    v56 = v19;
    allKeys = [v19 allKeys];
    v22 = [v20 initWithArray:allKeys];

    v60 = descriptionsCopy;
    [descriptionsCopy valueForKey:@"styles"];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v78 = 0u;
    v23 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v76;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v76 != v25)
          {
            objc_enumerationMutation(obj);
          }

          allKeys2 = [*(*(&v75 + 1) + 8 * i) allKeys];
          [v22 addObjectsFromArray:allKeys2];
        }

        v24 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v24);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v58 = v22;
    v28 = [v58 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v72;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v72 != v30)
          {
            objc_enumerationMutation(v58);
          }

          v32 = *(*(&v71 + 1) + 8 * j);
          v33 = [v56 objectForKey:v32];
          v34 = [obj valueForKey:v32];
          v35 = v34;
          if (v33 || [v34 count])
          {
            v36 = [[MTCoreMaterialVisualStyling alloc] initWithVisualStyleSet:v11 styleName:v32 description:v33 andDescendantDescriptions:v35];
            if (v36)
            {
              v37 = v36;
              [(NSMutableDictionary *)v11->_styleNamesToVisualStylings setObject:v36 forKey:v32];
            }
          }
        }

        v29 = [v58 countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v29);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v38 = MTAllOrdinalVisualStyles();
    v39 = MTAllPlatformColorVisualStyles();
    v40 = [v38 arrayByAddingObjectsFromArray:v39];

    v57 = v40;
    v41 = [v40 countByEnumeratingWithState:&v67 objects:v82 count:16];
    descriptionsCopy = v60;
    descriptionCopy = v61;
    if (v41)
    {
      v42 = v41;
      v59 = *v68;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v68 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v44 = *(*(&v67 + 1) + 8 * k);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v80 = descriptionCopy;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
          v46 = [v45 arrayByAddingObjectsFromArray:descriptionsCopy];

          v47 = [v46 countByEnumeratingWithState:&v63 objects:v81 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v64;
            do
            {
              for (m = 0; m != v48; ++m)
              {
                if (*v64 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = [*(*(&v63 + 1) + 8 * m) objectForKey:v44];
                if (v51)
                {
                  v52 = [(NSMutableDictionary *)v11->_styleNamesToVisualStylings objectForKey:v51];

                  if (v52)
                  {
                    [(NSMutableDictionary *)v11->_visualStylesToStyleNames setObject:v51 forKey:v44];
                  }
                }
              }

              v48 = [v46 countByEnumeratingWithState:&v63 objects:v81 count:16];
            }

            while (v48);
          }

          descriptionsCopy = v60;
          descriptionCopy = v61;
        }

        v42 = [v57 countByEnumeratingWithState:&v67 objects:v82 count:16];
      }

      while (v42);
    }

    nameCopy = v55;
  }

  v53 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)visualStylingForStyle:(id)style
{
  visualStylesToStyleNames = self->_visualStylesToStyleNames;
  styleCopy = style;
  v6 = [(NSMutableDictionary *)visualStylesToStyleNames objectForKey:styleCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = styleCopy;
  }

  v9 = v8;

  v10 = [(NSMutableDictionary *)self->_styleNamesToVisualStylings objectForKey:v9];

  return v10;
}

- (id)_materialDescriptionForStyle:(id)style withProvidedStyles:(id)styles
{
  stylesCopy = styles;
  v7 = [(MTVisualStyleSet *)self visualStylingForStyle:style];
  v8 = v7;
  if (v7 && (([v7 tintColorDescription], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) || _CanGenerateMaterialDescriptionForFilteringFromVisualStyling(v8)))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:v11 forKey:@"baseMaterial"];
    tintColorDescription = [v8 tintColorDescription];

    if (tintColorDescription)
    {
      tintColorDescription2 = [v8 tintColorDescription];
      [v11 setObject:tintColorDescription2 forKey:@"tinting"];
    }

    if (_CanGenerateMaterialDescriptionForFilteringFromVisualStyling(v8))
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v11 setObject:v14 forKey:@"materialFiltering"];
      filterType = [v8 filterType];
      v16 = [filterType isEqualToString:*MEMORY[0x1E6979D78]];

      if (v16)
      {
        filterProperties = [v8 filterProperties];
        v18 = [filterProperties objectForKey:@"inputColorMatrix"];
        [v14 setObject:v18 forKey:@"colorMatrix"];
      }
    }

    [v10 setObject:&unk_1F3E017B8 forKey:@"materialSettingsVersion"];
    if (stylesCopy)
    {
      [v10 setObject:stylesCopy forKey:@"styles"];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_newMaterialSettingsForStyle:(id)style withProvidedStyles:(id)styles
{
  styleCopy = style;
  v7 = [(MTVisualStyleSet *)self _materialDescriptionForStyle:styleCopy withProvidedStyles:styles];
  if (v7)
  {
    v8 = [MTRecipeMaterialSettings alloc];
    v9 = objc_opt_class();
    visualStyleSetName = [(MTVisualStyleSet *)self visualStyleSetName];
    v11 = [v9 recipeNameForRecipeFromStyle:styleCopy fromStyleSetWithName:visualStyleSetName];
    v12 = [(MTRecipeMaterialSettings *)v8 initWithRecipeName:v11 andDescription:v7 descendantDescriptions:0 bundle:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p styleName: %@; visualStyleSetVersion: %ld", objc_opt_class(), self, self->_visualStyleSetName, self->_visualStyleSetVersion];;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_styleNamesToVisualStylings;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_styleNamesToVisualStylings objectForKey:v9];
        v11 = v10;
        if (v10)
        {
          [v3 appendFormat:@"; %@: %@", v9, v10];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)recipeNameForRecipeFromStyle:(uint64_t)a1 fromStyleSetWithName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTVisualStyleSet.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"visualStyle"}];
}

+ (void)recipeNameForRecipeFromStyle:(uint64_t)a1 fromStyleSetWithName:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTVisualStyleSet.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"styleSetName"}];
}

@end