@interface IFGraphicSymbolOverrides
+ (id)overrides;
+ (id)overridesFileURL;
+ (void)overrides;
- (id)overrideForSymbol:(id)symbol shape:(int64_t)shape size:(CGSize)size;
@end

@implementation IFGraphicSymbolOverrides

+ (id)overridesFileURL
{
  if (overridesFileURL_onceToken != -1)
  {
    +[IFGraphicSymbolOverrides overridesFileURL];
  }

  v3 = overridesFileURL_overridesURL;

  return v3;
}

void __44__IFGraphicSymbolOverrides_overridesFileURL__block_invoke()
{
  v0 = +[IFBundle coreGlyphsPrivateBundle];
  v4 = [v0 bundleURL];

  if (v4)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v4];
    v2 = [v1 URLForResource:@"container_recipes" withExtension:@"plist"];
    v3 = overridesFileURL_overridesURL;
    overridesFileURL_overridesURL = v2;
  }
}

+ (id)overrides
{
  if (overrides_onceToken != -1)
  {
    +[IFGraphicSymbolOverrides overrides];
  }

  v2 = [overrides_cache objectForKey:@"overrides"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = objc_alloc_init(IFGraphicSymbolOverrides);
    v5 = MEMORY[0x1E695DF20];
    v6 = +[IFGraphicSymbolOverrides overridesFileURL];
    v14 = 0;
    v7 = [v5 dictionaryWithContentsOfURL:v6 error:&v14];
    v8 = v14;

    if (!v7)
    {
      v9 = IFDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[(IFGraphicSymbolOverrides *)v8];
      }
    }

    v10 = [[IFGraphicSymbolOverridesParser alloc] initWithRawOverrides:v7];
    parse = [(IFGraphicSymbolOverridesParser *)v10 parse];
    [(IFGraphicSymbolOverrides *)v4 setItems:parse];

    if (v4)
    {
      items = [(IFGraphicSymbolOverrides *)v4 items];

      if (items)
      {
        [overrides_cache setObject:v4 forKey:@"overrides"];
      }
    }

    v3 = v4;
  }

  return v3;
}

uint64_t __37__IFGraphicSymbolOverrides_overrides__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = overrides_cache;
  overrides_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)overrideForSymbol:(id)symbol shape:(int64_t)shape size:(CGSize)size
{
  height = size.height;
  v35 = *MEMORY[0x1E69E9840];
  symbolCopy = symbol;
  v8 = +[IFGraphicSymbolOverrides overrides];
  items = [v8 items];
  v10 = [items _IF_arrayForKey:symbolCopy];

  if (v10 && [v10 count])
  {
    LODWORD(v11) = llround(height);
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.shape == %d && SELF.enclosureDimension == %@", shape, v12];
    v14 = [v10 filteredArrayUsingPredicate:v13];
    if ([v14 count] == 1)
    {
      v15 = [v14 objectAtIndexedSubscript:0];
    }

    else
    {
      shape = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.shape == %d && SELF.isDefault == YES", shape];
      v17 = [v10 filteredArrayUsingPredicate:shape];
      if ([v17 count] == 1)
      {
        v15 = [v17 objectAtIndexedSubscript:0];
      }

      else
      {
        shape2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.shape == %d", shape];
        v19 = [v10 filteredArrayUsingPredicate:shape2];
        v20 = v19;
        if (v19 && [v19 count])
        {
          if ([v20 count] == 1)
          {
            v15 = [v20 objectAtIndexedSubscript:0];
          }

          else
          {
            v25 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"enclosureDimension" ascending:1];
            v30 = v25;
            v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
            v26 = [v20 sortedArrayUsingDescriptors:v28];

            [v26 valueForKey:@"enclosureDimension"];
            v22 = v29 = shape2;
            v23 = [v22 indexOfObject:v12 inSortedRange:0 options:objc_msgSend(v22 usingComparator:{"count"), 1536, &__block_literal_global_193}];
            v15 = [v26 objectAtIndexedSubscript:{v23 - (v23 == objc_msgSend(v22, "count"))}];

            shape2 = v29;
          }
        }

        else
        {
          v27 = shape2;
          v21 = IFDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v32 = symbolCopy;
            v33 = 2048;
            shapeCopy = shape;
            _os_log_impl(&dword_1B9DEC000, v21, OS_LOG_TYPE_INFO, "Failed to find override for %@ matching shape %lu", buf, 0x16u);
          }

          v15 = 0;
          shape2 = v27;
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __57__IFGraphicSymbolOverrides_overrideForSymbol_shape_size___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 integerValue];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

+ (void)overrides
{
  v5 = *MEMORY[0x1E69E9840];
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B9DEC000, a2, OS_LOG_TYPE_ERROR, "Failed to collect graphic variant overrides from plist. Error: %@", v4, 0xCu);
}

@end