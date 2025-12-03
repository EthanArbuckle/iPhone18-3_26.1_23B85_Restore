@interface IFGraphicSymbolOverridesParser
- (CGSize)_parseSymbolOffsetFromRawItem:(id)item;
- (IFGraphicSymbolOverridesParser)initWithRawOverrides:(id)overrides;
- (float)_parseSymbolSizeAdjusterFromRawItem:(id)item;
- (id)_parseSymbolContent:(id)content;
- (id)parse;
- (int64_t)_parseShapeFromRawShape:(id)shape;
- (int64_t)_parseSymbolWeightFromRawItem:(id)item;
- (unint64_t)_parseSymbolSizeFromRawItem:(id)item;
- (void)parse;
@end

@implementation IFGraphicSymbolOverridesParser

- (IFGraphicSymbolOverridesParser)initWithRawOverrides:(id)overrides
{
  overridesCopy = overrides;
  v9.receiver = self;
  v9.super_class = IFGraphicSymbolOverridesParser;
  v5 = [(IFGraphicSymbolOverridesParser *)&v9 init];
  if (v5)
  {
    v6 = [overridesCopy copy];
    rawOverrides = v5->_rawOverrides;
    v5->_rawOverrides = v6;
  }

  return v5;
}

- (id)parse
{
  rawOverrides = [(IFGraphicSymbolOverridesParser *)self rawOverrides];
  v4 = [rawOverrides _IF_numberForKey:@"version"];

  if ([v4 intValue] == 2)
  {
    rawOverrides2 = [(IFGraphicSymbolOverridesParser *)self rawOverrides];
    v6 = [rawOverrides2 _IF_dictionaryForKey:@"symbols"];
    v7 = [(IFGraphicSymbolOverridesParser *)self _parseSymbolContent:v6];
  }

  else
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IFGraphicSymbolOverridesParser parse];
    }

    v7 = 0;
  }

  return v7;
}

- (id)_parseSymbolContent:(id)content
{
  v50 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v24 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = contentCopy;
  v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v26)
  {
    v25 = *v44;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v5;
        v28 = *(*(&v43 + 1) + 8 * v5);
        v6 = [obj _IF_dictionaryForKey:?];
        v7 = objc_opt_new();
        v29 = v6;
        v8 = [v6 _IF_dictionaryForKey:@"shapes"];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v33 = v8;
        v32 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v32)
        {
          v31 = *v40;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v40 != v31)
              {
                objc_enumerationMutation(v33);
              }

              v10 = *(*(&v39 + 1) + 8 * i);
              v11 = [(IFGraphicSymbolOverridesParser *)self _parseShapeFromRawShape:v10];
              if (v11)
              {
                v12 = v11;
                v34 = i;
                v13 = [v33 _IF_dictionaryForKey:v10];
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v14 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
                if (!v14)
                {
                  goto LABEL_26;
                }

                v15 = v14;
                v16 = *v36;
                while (1)
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v36 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v35 + 1) + 8 * j);
                    intValue = [v18 intValue];
                    v20 = [v18 compare:@"default"];
                    if (v20)
                    {
                      if (![v18 compare:@"enclosure_sizes"])
                      {
                        continue;
                      }
                    }

                    else
                    {
                      intValue = 0x7FFFFFFFLL;
                    }

                    v21 = [v13 _IF_dictionaryForKey:v18];
                    v22 = [[IFGraphicSymbolOverride alloc] initWithShape:v12 enclosureDimension:intValue];
                    [(IFGraphicSymbolOverride *)v22 setIsDefault:v20 == 0];
                    [(IFGraphicSymbolOverride *)v22 setSymbolWeight:[(IFGraphicSymbolOverridesParser *)self _parseSymbolWeightFromRawItem:v21]];
                    [(IFGraphicSymbolOverride *)v22 setSymbolSize:[(IFGraphicSymbolOverridesParser *)self _parseSymbolSizeFromRawItem:v21]];
                    [(IFGraphicSymbolOverridesParser *)self _parseSymbolOffsetFromRawItem:v21];
                    [(IFGraphicSymbolOverride *)v22 setOffset:?];
                    [(IFGraphicSymbolOverridesParser *)self _parseSymbolSizeAdjusterFromRawItem:v21];
                    [(IFGraphicSymbolOverride *)v22 setPointSizeAdjuster:?];
                    if (v22)
                    {
                      [v7 addObject:v22];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v35 objects:v47 count:16];
                  if (!v15)
                  {
LABEL_26:

                    i = v34;
                    break;
                  }
                }
              }
            }

            v32 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v32);
        }

        if (v7)
        {
          [v24 setObject:v7 forKey:v28];
        }

        v5 = v30 + 1;
      }

      while (v30 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v26);
  }

  return v24;
}

- (int64_t)_parseShapeFromRawShape:(id)shape
{
  shapeCopy = shape;
  if ([shapeCopy caseInsensitiveCompare:@"rounded_rect"])
  {
    if ([shapeCopy caseInsensitiveCompare:@"capsule"])
    {
      if ([shapeCopy caseInsensitiveCompare:@"circle"])
      {
        v4 = IFDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          [IFGraphicSymbolOverridesParser _parseShapeFromRawShape:];
        }

        v5 = 0;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)_parseSymbolWeightFromRawItem:(id)item
{
  v3 = [item _IF_stringForKey:@"symbol_weight"];
  v4 = v3;
  if (v3)
  {
    if (![v3 caseInsensitiveCompare:@"Ultralight"])
    {
      v6 = 1;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Thin"])
    {
      v6 = 2;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Light"])
    {
      v6 = 3;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Regular"])
    {
      v6 = 4;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Medium"])
    {
      v6 = 5;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Semibold"])
    {
      v6 = 6;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Bold"])
    {
      v6 = 7;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Heavy"])
    {
      v6 = 8;
      goto LABEL_24;
    }

    if (![v4 caseInsensitiveCompare:@"Black"])
    {
      v6 = 9;
      goto LABEL_24;
    }

    v5 = IFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [IFGraphicSymbolOverridesParser _parseSymbolWeightFromRawItem:];
    }
  }

  v6 = 0;
LABEL_24:

  return v6;
}

- (unint64_t)_parseSymbolSizeFromRawItem:(id)item
{
  v3 = [item _IF_stringForKey:@"symbol_size"];
  v4 = v3;
  if (v3)
  {
    if (![v3 caseInsensitiveCompare:@"Small"])
    {
      v6 = 1;
      goto LABEL_12;
    }

    if (![v4 caseInsensitiveCompare:@"Medium"])
    {
      v6 = 2;
      goto LABEL_12;
    }

    if (![v4 caseInsensitiveCompare:@"Large"])
    {
      v6 = 3;
      goto LABEL_12;
    }

    v5 = IFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [IFGraphicSymbolOverridesParser _parseSymbolSizeFromRawItem:];
    }
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (float)_parseSymbolSizeAdjusterFromRawItem:(id)item
{
  v3 = [item _IF_stringForKey:@"pointsize_to_shape_mul"];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = -1.0;
  }

  return v6;
}

- (CGSize)_parseSymbolOffsetFromRawItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy _IF_stringForKey:@"x_offset"];
  [v4 floatValue];
  v6 = v5;

  v7 = [itemCopy _IF_stringForKey:@"y_offset"];

  [v7 floatValue];
  v9 = v8;

  if (v6 == 0.0 && v9 == 0.0)
  {
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v10 = v6;
    if (fabsf(v6) > 0.5)
    {
      v12 = IFDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(IFGraphicSymbolOverridesParser *)v12 _parseSymbolOffsetFromRawItem:v13, v14, v15, v16, v17, v18, v19];
      }

      v10 = 0.0;
    }

    v11 = v9;
    if (fabsf(v9) > 0.5)
    {
      v20 = IFDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(IFGraphicSymbolOverridesParser *)v20 _parseSymbolOffsetFromRawItem:v21, v22, v23, v24, v25, v26, v27];
      }

      v11 = 0.0;
    }
  }

  v28 = v10;
  v29 = v11;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)parse
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B9DEC000, v0, OS_LOG_TYPE_ERROR, "Unknown override version: %@", v1, 0xCu);
}

@end